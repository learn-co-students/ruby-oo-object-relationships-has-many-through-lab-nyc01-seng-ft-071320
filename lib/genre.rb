require 'pry'
require_relative './artist.rb'
require_relative './song.rb'

class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all {|song| song.genre == self}
    end

    def artists
        songs.map do |song|
            song.artist
        end
    end
end
