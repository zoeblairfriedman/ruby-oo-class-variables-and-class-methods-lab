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
@@genres << self.genre
@@artists << self.artist
end


def self.count
    @@count
end

def self.genres
    @@genres.uniq
end

def self.artists
    @@artists.uniq
end

def self.genre_count
genre_count_array = @@genres.each_with_object(Hash.new) do |genre, new_hash|
    if new_hash[genre]
        new_hash[genre] += 1
    else
        new_hash[genre] = 1
    end 
end
end

def self.artist_count
artist_count_array = @@artists.each_with_object(Hash.new(0)) do |artist, new_hash|
    new_hash[artist] += 1
end
end

# ['one', 'two', 'one', 'one'].each_with_object(Hash.new(0)) do |item, hash|
#     hash[item] += 1
#   end


end