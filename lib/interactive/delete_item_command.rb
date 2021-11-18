# frozen_string_literal: true

module Interactive
  class DeleteItemCommand

    def call
      use_history = true

      puts "Type ID of the item to delete:"

      id = Reline.readline("  id > ", use_history)

      if id == ""
        puts "Cancelled!"
        return
      end

      App::Api.delete_item(id: id)

      puts "Item deleted: #{id}"
    end

  end
end
