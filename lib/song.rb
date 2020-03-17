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
  
  def self.new_by_name(name) 
    song = self.new 
    song.name = name
    song
  end
  
  def self.create_by_name(song_name)
    song = self.create 
    song.name =  song_name
    song  
  end
  
  def self.find_by_name(song_name)
    @@all.find { |song| song.name == song_name}
    
  end
  
  def self.find_or_create_by_name(song_name)
     if song.find_by_name
     else song.create_by_name
   end
     
   end
    
  
  
  
  
  
end
