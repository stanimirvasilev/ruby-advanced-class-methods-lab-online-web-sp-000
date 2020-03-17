class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
   #instantiate the Song
   # save the Song
   #return new Song
   song = self.new 
   song.save
   song
  end
  
  def self.new_by_name 
    song = self.new 
    @@all.include?(song)
    
    
  end
  
  
  
  
end
