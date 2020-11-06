class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count += 1
        
        @name = name
        @artist = artist
        @genre = genre

        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq!
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genre_count
        @@genres.group_by{|genre| genre}.map{|g, c| [g,c.length]}.to_h
    end

    def self.artist_count
        @@artists.group_by{|artist| artist}.map{|a,c| [a,c.length]}.to_h
    end

end