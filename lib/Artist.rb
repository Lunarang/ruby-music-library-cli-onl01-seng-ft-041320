<<<<<<< HEAD


class Artist
  extend Concerns::Findable
=======
class Artist
>>>>>>> 63f98499840e49b8d5d1ef1c43ae87f026227cb8
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def self.all 
    @@all
  end
  
  def self.destroy_all 
    @@all.clear
  end
  
  def save
    @@all << self 
<<<<<<< HEAD
    self
=======
>>>>>>> 63f98499840e49b8d5d1ef1c43ae87f026227cb8
  end
  
  def self.create(name)
    Artist.new(name).save
<<<<<<< HEAD
=======
    self
>>>>>>> 63f98499840e49b8d5d1ef1c43ae87f026227cb8
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    song.artist = self unless song.artist
    @songs << song unless songs.include?(song) || song.artist != self
  end
  
  def genres
    @songs.each.collect {|song| song.genre}.uniq
  end
  
end
