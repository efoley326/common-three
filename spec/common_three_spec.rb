require "./common-three.rb"
require "./test_text.txt"

describe "#common-three" do

  let(:ARGF)  { "./test_text.txt"}
  
  it "can ignore casing" do
    expect(common-three(matches_high_to_low.size)).to eq(2)
  end
end