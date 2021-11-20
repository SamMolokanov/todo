# frozen_string_literal: true

require "json"

module App
  module Persistence
    class FileStorage

      def read
        with_file do |file|
          file.read.then do |file_content|
            if file_content.nil? || file_content.length.zero?
              []
            else
              JSON.parse(file_content)
            end
          end
        end
      end

      def save(element)
        read
          .then { |all_elements| all_elements.push(element) }
          .then { |new_elements| persist new_elements }
      end

      def delete(id)
        read
          .then { |all_elements| all_elements.reject { |el| el["id"] == id } }
          .then { |new_elements| persist new_elements }
      end

      def reset
        persist []
      end

      private

      def with_file
        filepath = App::Config.persistence.filepath
        file = File.open(filepath, File::CREAT | File::RDWR)

        yield file
      ensure
        file.close
      end

      def persist(array_of_elements)
        with_file do |file|
          file.truncate(0)
          file.flush
          file.write(JSON.dump(array_of_elements))
        end
      end

    end
  end
end
