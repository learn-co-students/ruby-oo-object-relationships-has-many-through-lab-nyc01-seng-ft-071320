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

    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
    end
    
    def songs
        Song.all.select{|song| song.artist == self}
    end

    def genres
        song_list = []

        Song.all.each do |song|
        if song.artist == self
        song_list <<song.genre
        end
    end
        song_list
    end

end
