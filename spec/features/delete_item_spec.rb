# frozen_string_literal: true

RSpec.describe "App::Api.delete_item" do
  let(:item) { App::Api.add_item(title: "t1", body: "b1") }
  let(:all_items) { App::Api.all_items }

  before { App::Api.delete_all }

  it "removes the item by id" do
    App::Api.delete_item(id: item.id)
    expect(all_items).to eq []
  end
end
