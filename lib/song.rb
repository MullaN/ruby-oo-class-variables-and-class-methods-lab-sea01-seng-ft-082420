require 'pry'

class Song
    attr_reader :name, :artist, :genre

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
        counted_genres = {}
        @@genres.each { |genre| counted_genres[genre] ? counted_genres[genre] += 1 : counted_genres[genre] = 1 }
        counted_genres
    end

    def self.artist_count
        counted_artists = {}
        @@artists.each { |artist| counted_artists[artist] ? counted_artists[artist] += 1 : counted_artists[artist] = 1 }
        counted_artists
    end
end