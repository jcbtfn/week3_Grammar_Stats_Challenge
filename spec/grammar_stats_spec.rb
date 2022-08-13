require "grammar_stats"

RSpec.describe "GrammarStats class and its methods" do
    #Tests just for the check function
    it "test check with empty string should return empty message" do
        textchecker = GrammarStats.new
        expect(textchecker.check("")).to eq "Text is empty, please insert your text."
    end
    it "test check with empty string (2) should return empty message" do
        textchecker = GrammarStats.new
        expect(textchecker.check(" ")).to eq "Text is empty, please insert your text."
    end
    it "test check with uppercase and ! symbol at the end" do
        textchecker = GrammarStats.new
        expect(textchecker.check("Hello World!")).to eq true
    end
    it "test check with lowercase and end symbol ! at the end" do
        textchecker = GrammarStats.new
        expect(textchecker.check("hello World!")).to eq false
    end
    it "test check with uppercase and end symbol . at the end" do
        textchecker = GrammarStats.new
        expect(textchecker.check("Hello World.")).to eq true
    end
    it "test check with lowercase and no end symbol at the end" do
        textchecker = GrammarStats.new
        expect(textchecker.check("hello world")).to eq false
    end
    it "test check with uppercase and end symbol ? at the end" do
        textchecker = GrammarStats.new
        expect(textchecker.check("Hello World?")).to eq true
    end
    it "test check with uppercase but with , end symbol at the end" do
        textchecker = GrammarStats.new
        expect(textchecker.check("hello world")).to eq false
    end
    it "test check with minimum correct string (2chars)" do
        textchecker = GrammarStats.new
        expect(textchecker.check("A!")).to eq true
    end
    it "test check passing just one char" do
        textchecker = GrammarStats.new
        expect(textchecker.check("a")).to eq false
    end
    it "test check when string starts with something different than a letter" do
        textchecker = GrammarStats.new
        expect(textchecker.check("012!")).to eq false
    end
    it "test the percentage function" do
        textchecker = GrammarStats.new
        textchecker.check("")
        textchecker.check(" ")
        textchecker.check("Hello World!")
        textchecker.check("hello World!")
        textchecker.check("Hello World.")
        textchecker.check("hello world")
        textchecker.check("Hello world?")
        textchecker.check("Hello world,")
        textchecker.check("A!")
        textchecker.check("A")
        textchecker.percentage_good
    end
end



# p textchecker.check("A") #false
# p "ESPECIAL: " + textchecker.check("012!").to_s #false