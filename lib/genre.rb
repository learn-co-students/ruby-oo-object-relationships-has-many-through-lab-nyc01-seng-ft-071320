
require_relative "artist.rb"
require_relative "song.rb"
class Genre
    @@all = []
    attr_accessor :name, :genre
    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
       songs.map do |song|
        song.artist
       end
    end

end