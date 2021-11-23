# frozen_string_literal: true

module Interactive
  class CompleteItemCommand

    def call
      use_history = true

      puts "Type ID of the item to complete (or leave it empty to cancel):"

      id = Reline.readline("  id > ", use_history)

      if id == ""
        puts "Cancelled!"
        return
      end

      App::Api.complete_item(id: id)

      puts "Item completed!: #{id}"
    end

  end
end
