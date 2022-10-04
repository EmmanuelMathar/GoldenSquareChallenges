require "check_todo"

RSpec.describe "check todo method" do
    context "when string includes TODO" do
        it "returns TODO" do
            result = check_todo("TODO:the laundry")
            expect(result).to eq "Don't forget TODO:the laundry"
        end
    end 
    context "when string does not include TODO" do
        it "returns a statment" do
            result = check_todo("Have you done the laundry")
            expect(result).to eq "There are no tasks to worry about"
        end 
    end
    context "when string is empty" do
        it "fails and return an error " do
            expect {check_todo("")}.to raise_error "No text given"
        end
    end


end

