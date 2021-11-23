# frozen_string_literal: true

RSpec.describe "App::Api.complete_item" do
  before { App::Api.delete_all }

  let(:item) { App::Api.add_item(title: "t1", body: "b1") }
  let(:completed_item) { App::Api.all_items.detect { _1.id == item.id } }

  it "changes item to make it 'done'" do
    App::Api.complete_item(id: item.id)
    expect(completed_item.done).to eq true
  end
end
