class Song

  @@count = 0 #need this to simply set it as something
  #even if I haven't set Song.new Song.count WILL return 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @genre = genre
    @name = name
    @artist = artist
    @@count += 1 #gets reset everytime there is a new instance of this class
    @@artists << artist
    @@genres << genre
  end

  def self.count #called on the class here
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash[genre].nil?
        genre_hash[genre] = 1
      else
        genre_hash[genre] += 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    
    @@artists.each do |artist|
      if artist_hash[artist].nil?
        artist_hash[artist] = 1
      else
        artist_hash[artist] += 1
      end
    end
   artist_hash
  end

end
