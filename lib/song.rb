require_relative "artist.rb"
require_relative "genre.rb"
class Song
    @@all = []
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end