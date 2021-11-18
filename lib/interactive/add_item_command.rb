# frozen_string_literal: true

module Interactive
  class AddItemCommand

    def initialize
      @use_history = true
    end

    def call
      title = take_title
      body = take_body

      item = App::Api.add_item(title: title, body: body)

      puts "Added item:"
      puts Interactive::Render.new(item).call
    end

    private

    attr_reader :use_history

    def take_title
      puts "Type title (single line)"
      Reline.readline("  title > ", use_history)
    end

    def take_body
      puts "Type body (2 empty lines will finish the input)"
      text = Reline.readmultiline("  body >", use_history) do |multiline_input|
        multiline_input.end_with? "\n\n\n"
      end
      text.chomp
    end

  end
end
