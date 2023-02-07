require_relative "./spec_helper.rb"

# for quick reference, the contents of the text .txt file:
# oops I can't believe I messed this up. 
# oops I can't BelievE you messed this up!
# Oops, I messed this up. 
# oops i cAn't believe I messed this up.  Oops you messed ThIs up

RSpec.describe "Cli" do
ARGF = File.open("./texts/test_text.txt")

  def run_example
    list = Cli.run(ARGF)
    list.to_a
  end

  it "can ignore casing" do
    expect(run_example.first) == ("messed this up - 5")
  end
  
  it "can ignore punctuation" do
    expect(run_example.first) == ("messed this up - 5")
  end
  
  it "can take contractions as a single word" do
    expect(run_example[2]) == ("i cant believe - 3")
  end
end