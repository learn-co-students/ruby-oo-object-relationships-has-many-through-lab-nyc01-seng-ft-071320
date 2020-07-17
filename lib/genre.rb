class Genre
    attr_accessor :name, :artist
    
    @@all = []
    
    def initialize(name)
    @name = name
    @@all << self
    end
    
    def self.all
        @@all 
    end

    def songs
        Song.all.select do |s| 
       if s.genre == self
            s.genre
          end
        end
    end

    def artists
        Song.all.collect do |s|
        if s.genre == self
            s.artist
        end
      end
    end
    
    end