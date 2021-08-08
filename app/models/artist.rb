class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    # Store value of first song genre id
    genre_id = self.songs.first.genre_id

    #Search Genre object for genre id
    Genre.find(genre_id) 
  end

  def song_count

    # Grab songs and count the number of items in array
    self.songs.length
  end

  def genre_count

    results = ""
    self.songs.each do |song| 
      results = song.genre_id
    end
    results
    #return the number of genres associated with the artist
  end
end
