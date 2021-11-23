# frozen_string_literal: true

module Interactive
  class DeleteAllCommand

    def call
      use_history = true

      puts "Are you sure? Type \"y\" for confirmation:"

      confirmation = Reline.readline("  delete all? > ", use_history)

      if confirmation == "y"
        App::Api.delete_all
        puts "All items deleted!"
      else
        puts "Cancelled!"
      end
    end

  end
end
