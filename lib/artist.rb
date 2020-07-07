class Artist
  attr_accessor :name, :song, :genre
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def new_song(song, genre)
    Song.new(self, song, genre)
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end
end
