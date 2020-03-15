require_relative './author.rb'

class Post
    @@all = []
    attr_accessor :title, :author

    def initialize(title)
        @title = title
        @@all.push(self)
    end 

    def self.all()
        return @@all
    end 

    def author_name()
        if author
            self.author.name 
        end
    end 
end
