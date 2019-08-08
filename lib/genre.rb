class Genre 

  attr_accessor :name, :artists

  @@all = []

  def initialize(name)
    @name = name 
    @artists = []
    @@all << self
  end 

  def self.all
    @@all
  end

  def songs # genre's collection of songs
    Song.all.select { |song| song.genre == self }
  end 

  def artists
    artist_arr = []
    songs.each do |song|
      artist_arr << song.artist if !artist_arr.include?(song.artist)
    end

    artist_arr
  end


end #end of class Genre