
class Artist

    attr_accessor :name, :genre, :artist
    @@all = []

    def self.all
        @@all
    end

    def initialize (name)
      @name = name
      @@all << self
    end

    def new_song (name, genre)
        Song.new(name, self, genre)
    end 

    def songs
        Song.all.each.select{|song| song.artist == self}
    end 

    def genres
        songs.each.map{|song| song.genre}
    end 

end
