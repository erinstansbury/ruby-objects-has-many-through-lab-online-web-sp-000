class Genre
  attr_accessor :name, :song, :artist
  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @song = song
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.genre = self
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end
end
