class Artist 
attr_reader :name
@@all=[]
    def initialize(name)
        @@all<<self
        @name= name
    
    end 
   def self.all    
        @@all
    end 
     def songs
        Song.all.select{|a_song| a_song.artist == self}
     end 
     
     def new_song(name, genre)
        Song.new(name,self , genre)
     end

     def genres
        Genre.all.select{|genre| genre.artist ==self}
     end
     def genres
        songs.map do |song| 
            song.genre
     end
    end 














end 