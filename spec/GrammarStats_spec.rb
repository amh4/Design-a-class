require_relative '../lib/GrammarStats.rb'

RSpec.describe GrammarStats do
  it "returns false if there is no capital letter" do
  text = GrammarStats.new
  expect(text.check("no cap")).to eq false
  end

  it "returns false if there is no punctuation" do
    text = GrammarStats.new
    expect(text.check("No punc")).to eq false
  end

  it "returns true if sentence is correct" do
    text = GrammarStats.new
    expect(text.check("All is fine.")).to eq true
  end

  it "returns error if the string is empty" do
    text = GrammarStats.new
    expect {text.check("")}.to raise_error "Not a sentence."
  end

  it "returns how many sentences have passed as %" do
    text = GrammarStats.new
    text.check("First good.")
    text.check("Second good.")
    text.check("Second good.")
    text.check("Second good.")
    text.check("first bad")
    text.check("second bad")
    expect(text.percentage_good).to eq 67
  end
  
end