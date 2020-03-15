require_relative './artist.rb'

class Song
    @@all = []
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all.push(self)
    end 

    def self.all()
        return @@all
    end 

    def artist_name()
        if artist
            self.artist.name
        end
    end 
end 