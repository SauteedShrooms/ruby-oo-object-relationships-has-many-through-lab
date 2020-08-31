require 'pry'

class Genre

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|inst_song| inst_song.genre == self}
  end

  def artists
    self.songs.map {|inst_song| inst_song.artist}
  end


end
