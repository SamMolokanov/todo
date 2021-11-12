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

      def save(content)
        existing_content = read
        new_content = existing_content.push(content)

        with_file do |file|
          file.rewind
          file.write(JSON.dump(new_content))
        end
      end

      private

      def with_file
        filepath = App::Config.persistence.filepath
        file = File.open(filepath, File::CREAT | File::RDWR)

        yield file
      ensure
        file.close
      end

    end
  end
end
