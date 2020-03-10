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
    
    song=self.new
    @@all <<song
    song
  end
    
    
  def self.new_by_name(song_name)
    song=self.new
    song.name=song_name
    song
    
  end
  
  def self.create_by_name(song_name)
    song=self.new
    song.name=song_name
    self.all<<song
    song
  end 
  
  def self.find_by_name(song_name)
    self.all.find do |song|
      song.name==song_name
    end
    
  end
  
  def self.find_or_create_by_name(song_name)
    if self.find_by_name(song_name)
      self.find_by_name(song_name)
    else
      self.create_by_name(song_name)
    end
     
  end
  
  def self.alphabetical
    @sorted=[]
    @@all.each do |song_inst|
      @sorted<<song_inst.name
    end
    
    @sorted.sort do |a,b|
      a<=>b 
    end 
    
    @sorted
    
  end 
    
    
  

    
    
  
  
end

