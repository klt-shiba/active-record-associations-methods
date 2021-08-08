class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    Genre.find(self.genre_id).name
  end

  def drake_made_this

    value = Artist.find_by(name: "Drake")

    if value
      value.songs << self
    else 
      drake = Artist.new(name: "Drake")
      drake.save
      drake.songs << self
    end
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*

  end
end