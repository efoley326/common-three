# !usr/bin/env ruby
require_relative "./spec_helper.rb"
require_relative "../lib/common-three.rb"


RSpec.describe "Cli" do

  it "can ignore casing" do
    Cli.run("./texts/test_text.txt")
    expect(Cli[:all_matches].size).to eq(2)
  end
end
