require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist 
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count 
        @@count 
    end

    def self.artists 
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count 
        genre_hash_count = {}
        @@genres.each do |genre|
            if !genre_hash_count.include? genre
                genre_hash_count[genre] = 1
            else
                genre_hash_count[genre] += 1
            # binding.pry
            end
        end
        genre_hash_count
        # binding.pry
    end

    def self.artist_count 
        artist_hash_count = {}
        @@artists.each do |artist|
            if !artist_hash_count.include? artist
                artist_hash_count[artist] = 1
            else
                artist_hash_count[artist] += 1
            # binding.pry
            end
        end
        artist_hash_count
        # binding.pry
    end

end

# binding.pry