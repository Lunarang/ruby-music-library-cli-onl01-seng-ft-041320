class Genre 
<<<<<<< HEAD
  extend Concerns::Findable
=======
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
    Genre.new(name).save
<<<<<<< HEAD
=======
    self
>>>>>>> 63f98499840e49b8d5d1ef1c43ae87f026227cb8
  end
  
  def songs 
    @songs
  end
  
  def add_song(song)
    song.genre = self unless song.genre
    @songs << song unless songs.include?(song) || song.genre != self
  end
  
  def artists
    @songs.each.collect {|song| song.artist}.uniq
  end
  
end
