require 'pry'
require_relative './genre.rb'
require_relative './song.rb'

class Artist
    attr_accessor :name
  
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        #puts "im inside init"
    end

    def self.all
        @@all
        #puts "hello world"
    end
    
    def songs
            #puts "i'm in songs"
        Song.all.select {|song| song.artist == self}
    end
        
    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        songs.map do |song|
            song.genre
        end
    end
    
end
