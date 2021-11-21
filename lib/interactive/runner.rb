# frozen_string_literal: true

module Interactive
  class Runner

    ADD_ITEM_COMMAND = "add_item"
    ALL_ITEMS_COMMAND = "all_items"
    DELETE_ITEM_COMMAND = "delete_item"
    DELETE_ALL_COMMAND = "delete_all"
    COMPLETE_ITEM_COMMAND = "complete_item"
    EXIT_COMMANDS = %w[exit quit q].freeze

    COMMANDS = [
      ADD_ITEM_COMMAND,
      ALL_ITEMS_COMMAND,
      DELETE_ITEM_COMMAND,
      DELETE_ALL_COMMAND,
      COMPLETE_ITEM_COMMAND,
      *EXIT_COMMANDS
    ].freeze

    # rubocop:disable Metrics/MethodLength
    def call(command)
      case command.chomp
      when *EXIT_COMMANDS
        Interactive::ExitCommand.new.call
      when ADD_ITEM_COMMAND
        Interactive::AddItemCommand.new.call
      when ALL_ITEMS_COMMAND
        Interactive::AllItemsCommand.new.call
      when DELETE_ITEM_COMMAND
        Interactive::DeleteItemCommand.new.call
      when DELETE_ALL_COMMAND
        Interactive::DeleteAllCommand.new.call
      when COMPLETE_ITEM_COMMAND
        Interactive::CompleteItemCommand.new.call
      else
        puts "Unknown command: #{command}"
      end
    end
    # rubocop:enable Metrics/MethodLength

  end
end
