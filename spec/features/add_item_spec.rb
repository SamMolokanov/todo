# frozen_string_literal: true

RSpec.describe "App::Api.add_item" do
  context "when persistence is set to file" do
    subject(:persisted_json) { JSON.parse(file.read) }

    before { App::Api.add_item(title: title, body: body) }

    let(:title) { "here is title" }
    let(:body) { "here is body" }

    let(:file) { File.open(App::Config.persistence.filepath, "r") }

    it "saves the item into the file as json" do
      expect(persisted_json).to(
        include(hash_including("title" => "here is title", "body" => "here is body"))
      )
    end
  end
end
