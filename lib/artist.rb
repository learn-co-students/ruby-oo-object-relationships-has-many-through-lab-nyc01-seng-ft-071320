require 'pry'
require_relative "genre.rb"
require_relative "song.rb"
class Artist
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

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        songs.map do |song|
           song.genre
        end
    end

end
