class Song
    @@all = []
    attr_accessor :name, :genre, :artist
    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end
end