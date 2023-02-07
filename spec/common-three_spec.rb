require_relative "./spec_helper.rb"

RSpec.describe "Cli" do
ARGF = File.open("./texts/test_text.txt")

  def run_example
    list = Cli.run(ARGF)
    list.to_a
  end

  it "can ignore casing" do
    expect(run_example.first) == ("messed this up - 5")
  end
end