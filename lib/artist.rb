class Artist 
  attr_accessor :name, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end
  
  def self.all 
    @@all
  end
  
  def new_song(title, genre)
   Song.new(title, self, genre)

  end
  
  def songs
  Song.all.select do |song|
    song.artist == self
  end
end
  
   def genres
  Genre.all.select do |genre|
    Genre.artists == self
  end
end
  
end