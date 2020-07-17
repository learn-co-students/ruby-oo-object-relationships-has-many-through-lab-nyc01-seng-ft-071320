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
    Song.all.select do |s| 
        s.artist == self
    end
end

def new_song(name, genre)
    song = Song.new(name,self,genre)
    song
end

def genres
    Song.all.collect do |s|
    collection = s.genre
    collection  
    end
end

end