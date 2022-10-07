require "diary_entry"
require "diary"

RSpec.describe "integration" do 
    context "after adding some entries" do 
    it "returns all the contents" do 
        diary = Diary.new
        diary_entry = DiaryEntry.new("title1", "contents1")
        diary_entry2 = DiaryEntry.new("title2", "contents")
        diary.add(diary_entry)
        diary.add(diary_entry2)
        expect(diary.all).to eq [diary_entry, diary_entry2]
    end
    describe "counts words" do 
        it "counts the words in all diary entries " do 
        diary = Diary.new
        diary_entry = DiaryEntry.new("title1", "contents1")
        diary_entry2 = DiaryEntry.new("title2", "contents")
        diary.add(diary_entry)
        diary.add(diary_entry2)
        expect(diary.count_words).to eq 2

        end
    end

end
end 