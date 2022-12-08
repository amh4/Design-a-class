require_relative '../lib/GrammarStats.rb'

RSpec.describe GrammarStats do
  it "returns false if there is no capital letter" do
  text = GrammarStats.new
  expect(text.check("no cap")).to eq false
  end

  it "returns false if there is no punctuation" do
    text = GrammarStats.new
    expect(text.check("No cap")).to eq false
  end

  it "returns true if sentence is correct" do
    text = GrammarStats.new
    expect(text.check("All is fine.")).to eq true
  end

  it "returns error if the string is empty" do
    text = GrammarStats.new
    expect {text.check("")}.to raise_error "Not a sentence."
  end
end