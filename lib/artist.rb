class Artist

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
        Song.all.select { |song| song.artist == self }
        
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

    def genres  #genres that iterates over that artist's songs and collects the genre of each song.
        songs.map {|song| song.genre}
        #songs.map(&:genre)
    end
end
