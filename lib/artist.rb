require_relative "./song.rb"

class Artist

attr_accessor :name

@@all = [] 

def initialize(name)
  @name = name 
  @songs = [] 
  @@all << self 
end

def self.all 
  @@all 
end 

def new_song(name, genre)
  Song.new(name, self, genre) #creates a new song with the name we pulled in, ourselves (artist), and genre
end

def songs
  Song.all.select { |song| song.artist == self }
end 

def genres
  genre_arr = []
  songs.each do |song|
    genre_arr << song.genre if !genre_arr.include?(song.genre)
  end

  genre_arr
end


end #end of Artist class