class SongGenre < ActiveRecord::Base
  belongs_to :genre
  belongs_to :song

  def slug
    self.name.parameterize
  end
  
end
