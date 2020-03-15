require_relative './song.rb'

class Artist 
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def songs()
        artist_songs = []
        Song.all.each do |song|
            if song.artist == self
                artist_songs.push(song)
            end
        end 
        artist_songs
    end 

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        add_song(Song.new(name))
    end

    def self.song_count()
        Song.all.length
    end 

end 