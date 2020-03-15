require_relative './post.rb'

class Author
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name 
        @@all.push(self)
    end 

    def posts()
        author_posts = []
        Post.all.each do |post|
            if post.author == self
                author_posts.push(post)
            end
        end
    end 

    def add_post(post)
        post.author = self
    end 

    def add_post_by_title(name)
        add_post(Post.new(name))
    end 

    def self.post_count()
        Post.all.length
    end

end 