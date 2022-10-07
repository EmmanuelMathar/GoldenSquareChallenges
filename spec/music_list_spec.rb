require "music_list"

RSpec.describe MusicList do
    it " returns the list of music listened" do 
        music_list = MusicList.new
        music_list.add_music("music1")
        music_list.add_music("music2")
        music_list.add_music("music3")
        music_list.add_music("music4to56")
        expect(music_list.list_of_music).to eq "music1, music2, music3, music4to56"
    end
    context " when no music added" do
    it "fails" do 
        music_list = MusicList.new
        music_list.add_music("")
        expect { music_list.list_of_music}.to raise_error "You have not listen to a song"
    end
end

end