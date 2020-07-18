class Genre

    attr_accessor :name
    @@all =[]

    def save
        @@all<<self
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all=[]
    end

    def initialize (name)
        @name=name
        save
    end

    def songs
        Song.all.select {|song_in_cl_songs| song_in_cl_songs.genre==self}
    end

    def artists
        Artist.all.select{|song_in_cl_artists|song_in_cl_artists.genre=self}
    end


end