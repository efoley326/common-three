require_relative "./spec_helper.rb"

RSpec.describe "Cli" do

  it "can ignore casing" do
    fake_argf = ARGF.file(file:"./texts/test_text.txt")
    Cli.run(fake_argf)
    expect((:matches_high_to_low).size).to eq(2)
  end

end
