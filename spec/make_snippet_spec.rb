require "make_snippet"

RSpec.describe "make_snippet" do
    it "Retruns the first five words" do
        result = make_snippet("hello world")
        expect(result).to eq "hello..."
    end
end
