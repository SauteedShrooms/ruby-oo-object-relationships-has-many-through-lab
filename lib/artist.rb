require 'pry'

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
   artist_portfolio = Song.all.select {|inst_song| inst_song.artist}
  end

  def new_song(name, genre)
    newsong = Song.new(name, self, genre)
  end

  def genres
    self.songs.map {|attribute| attribute.genre}
  end


end
