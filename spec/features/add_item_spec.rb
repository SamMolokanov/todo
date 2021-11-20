# frozen_string_literal: true

RSpec.describe "App::Api.add_item" do
  subject(:add_item) { App::Api.add_item(title: title, body: body) }

  before { App::Api.delete_all }

  let(:all_items) { App::Api.all_items }

  let(:title) { "here is title" }
  let(:body) { "here is body" }

  it "returns the added item and adds the this item to the collection" do
    new_item = add_item
    expect(App::Api.all_items).to eq [new_item]
  end

  it "creates a new item with the given title" do
    expect(add_item.title).to eq title
  end

  it "creates a new item with the given body" do
    expect(add_item.body).to eq body
  end
end
