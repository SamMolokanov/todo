# frozen_string_literal: true

module Interactive
  class Render

    def initialize(item)
      @item = item
    end

    def call
      "  id:#{@item.id}\n\n  done:\n#{@item.done}\n\n  title:\n#{@item.title}\n\n  body:\n#{@item.body}"
    end

  end
end
