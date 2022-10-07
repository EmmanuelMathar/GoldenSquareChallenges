#As a user
#So that I can keep track of my music listening
#I want to add tracks I've listened to and see a list of them.

# Design the class interface
class MusicList

    def initialize 
        @songs = []
    end

    def add_music(music)
# Adds a new piece of music to a list of music
    # Returns nothing (nil)
        @songs << music
    end

    def list_of_music
        # Returns list of songs added to the list by add_music
    # Return type: string
        if @songs.join.empty? == true 
            fail "You have not listen to a song"
        else
        return @songs.join(", ")
        end
    end

end

music_list = MusicList.new
music_list.add_music("music1")
music_list.add_music("music2")
music_list.add_music("music3")
music_list.add_music("music4to56")
music_list.list_of_music # to return : "music1, music2, music3, music4to56"

