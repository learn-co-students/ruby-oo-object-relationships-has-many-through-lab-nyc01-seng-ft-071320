require 'pry'
class Artist

    attr_accessor :name, :genre
    @@all =[]

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def self.clear_all
        @@all=[] ## as oppose to self.all.clear 
    end

    def initialize (name)
       @name=name
       save 
    end

    def songs
        Song.all.select {|song|song.artist==self}
    end

    def new_song (song,genre)
        song=Song.new(song,self,genre)
        # binding.pry
    end

    def genres
        # songs_in_genre=Song.all.maps {|song|song.artist==self}
        # songs_in_genre.collect {|genre|genre.name}
        songs.collect{|song|song.genre}
        # binding.pry
    end

end