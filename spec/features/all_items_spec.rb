# frozen_string_literal: true

RSpec.describe "App::Api.all_items" do
  context "when persistence is set to file" do
    subject(:all_items) { App::Api.all_items }

    let(:items_as_json) do
      <<~JSON.strip
        [
          {"id": "1", "title": "t1", "body": "b1"},
          {"id": "2", "title": "t2", "body": "b2"}
        ]
      JSON
    end

    before do
      File.write(App::Config.persistence.filepath, items_as_json)
    end

    it "returns all items from the file" do
      expected_items = JSON.parse(items_as_json).map { |el| App::Models::Item.new(el) }
      expect(all_items).to eq expected_items
    end
  end
end
