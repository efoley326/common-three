require_relative "./spec_helper.rb"

RSpec.describe "Cli" do
  
  describe "test run unit testing" do
  # for quick reference, the contents of the text .txt file:
  # oops I can't believe I messed this up.- 
  # oops I can't BelievE you messed this up!
  # Oops, I messed this up. 
  # oops i cAn't believe I messed this up.  Oops you messed ThIs up
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
    
    it "can ignore hyphens as punctuation" do
      expect(run_example.first) == ("messed this up - 5")
    end
    
    it "returns each index in the correct format: three word phrase - count" do
      expect(run_example[1] == ("this up oops - 4")) &&
      expect(run_example[2]) == ("i cant believe - 3") &&
      expect(run_example[8]) == ("you messed this - 2")
    end
  end
  
  describe "test run e2e testing" do
  ARGF = File.open("./texts/moby-dick.txt")
  
    def run_example
      list = Cli.run(ARGF)
      list.to_a
    end
    
    it "returns at least 100 phrases" do
      expect(run_example[99])
    end
    
    it "returns no more than 100 phrases" do
      expect(run_example[100]) == false
    end
  end
end