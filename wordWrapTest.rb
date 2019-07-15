require_relative "wordWrap"
require "rspec/autorun"

describe "#wrap" do

	it "returns empty string for nothing" do
		expect(wrap("",1)).to eq("")
	end

	it "the word if it's shorter than the max length" do
		expect(wrap("short", 6)).to eq("short")
	end

	it "aplits long word at max length" do
		expect(wrap("longword", 4)).to eq("long\nword")
	end

	it "splits very long words through multiple columns" do
		expect(wrap("verylongword", 4)).to eq("very\nlong\nword")
	end

	it "splits strings on a space" do
		expect(wrap("long word", 5)).to eq("long\nword")
	end

	it "removes spaces at the begining of the line" do
		expect(wrap("long word", 4)).to eq("long\nword")
	end

	it "splits just before the new word" do
		expect(wrap("long word", 6)).to eq("long\nword")
	end

	it "keeps all possible words on one line" do
		expect(wrap("some long word", 10)).to eq("some long\nword")
	end

end