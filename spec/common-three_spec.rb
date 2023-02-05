require_relative "./spec_helper.rb"

RSpec.describe "Cli" do
let(:ARGF) { "./texts/test_text.txt" }

  it "can ignore casing" do
    expect(Cli(:all_matches).size).to eq(2)
  end
end
