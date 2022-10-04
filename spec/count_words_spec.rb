require "count_words"

RSpec.describe "counting words" do
    it "Counts the number of words in a string" do
        counter = count_words("Deborah and Emmanuel")
        expect(counter).to eq 3
    end
end
