class Genre 
  attr_accessor :name, :artists, :song
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name 
    @@all.push(self)
  end
    
     def artists
  Artist.all.select do |artist|
    artist.genre == self
  end
end
    
    def songs 
      Song.all.select do |song|
    song.genre == self
  end
    end
    
end