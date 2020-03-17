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
     self.find_by_name(song_name) || self.create_by_name(song_name)
   end
     
  def self.alphabetical 
@@all.sort_by { |song_name| song_name.name}
    
  end
    
    def self.new_from_filename(filename)
      #filename = "Taylor Swift - Black space mp3"
      #return a new song instance 
      #set song name to name of artist "taylor swift"
      #parse the filename for song name and artist name 
      #separate artist name at - 
      #remove the .mp3 from song name
      info = filename.split(" - ")
      song = self.new 
      song.name = info[1]
      
      
    end
  
  
  
  
  
end
