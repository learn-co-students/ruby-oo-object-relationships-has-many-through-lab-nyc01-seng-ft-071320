class Song

    attr_accessor :name, :artist, :genre
    @@all=[]

    def save 
        @@all<<self
    end

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear # as oppose to self.all.clear
    end

    def initialize (name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        # @artist=artist.new(artist)
        # @genre=genre.new(genre)
        save
    end

end
