# frozen_string_literal: true

RSpec.describe "App::Api.all_items" do
  context "when there is no items" do
    subject(:all_items) { App::Api.all_items }

    before { App::Api.delete_all }

    it "is an empty array" do
      expect(all_items).to eq []
    end
  end

  context "when there are items" do
    subject(:all_items) { App::Api.all_items }

    before { App::Api.delete_all }

    it "returns all existing items" do
      item1 = App::Api.add_item(title: "t1", body: "b1")
      item2 = App::Api.add_item(title: "t2", body: "b2")

      expect(all_items).to contain_exactly(item1, item2)
    end
  end
end
