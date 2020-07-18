class Genre
    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {
        |s_instance| s_instance.genre == self
        }
    end

    def artists
        songs.map {
            |s_instance| s_instance.artist
        }
    end
    
end 