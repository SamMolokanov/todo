# frozen_string_literal: true

RSpec.describe "App::Api.delete_item" do
  context "when persistence is set to file" do
    subject(:persisted_json) { JSON.parse(File.read(filename)) }

    let(:filename) { App::Config.persistence.filepath }

    let(:items_as_json) do
      [
        { id: "1", title: "t1", body: "b1" },
        { id: "2", title: "t2", body: "b2" }
      ]
    end

    before do
      File.write(filename, JSON.dump(items_as_json))
      App::Api.delete_item(id: "1")
    end

    it "removes item by its ID" do
      expect(persisted_json).not_to(
        include(hash_including("id" => "1"))
      )
    end
  end
end
