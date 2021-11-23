# frozen_string_literal: true

module Interactive
  class ExitCommand

    def call
      puts "BYE!"
      exit 0
    end

  end
end
