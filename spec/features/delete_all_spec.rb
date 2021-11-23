# frozen_string_literal: true

RSpec.describe "App::Api.delete_all" do
  let(:all_items) { App::Api.all_items }

  before do
    App::Api.add_item(title: "t1", body: "b1")
    App::Api.add_item(title: "t2", body: "b2")
  end

  it "removes all items" do
    App::Api.delete_all
    expect(all_items).to eq []
  end
end
