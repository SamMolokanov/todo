# frozen_string_literal: true

RSpec.describe App::Api do
  describe ".add_item" do
    context "when title and body are given" do
      subject(:returned_result) { described_class.add_item(title: title, body: body) }

      let(:title) { "here is title" }
      let(:body) { "here is body" }

      it "returns title and body together" do
        expect(returned_result).to eq([title, body])
      end
    end
  end
end
