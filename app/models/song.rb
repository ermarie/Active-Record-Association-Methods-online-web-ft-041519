class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    artist = Artist.find_by(name: "Drake")
    if artist == nil
      new_artist = Artist.create(name: "Drake")
      self.artist_id = new_artist.id
    else
      self.artist_id = artist.id
    end
    self
  end
end
