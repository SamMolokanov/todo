# frozen_string_literal: true

module Interactive
  class AllItemsCommand

    def call
      App::Api.all_items.each do |item|
        puts Interactive::Render.new(item).call
        puts "_______\n"
      end
    end

  end
end
