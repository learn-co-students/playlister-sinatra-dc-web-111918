require_relative "./concerns/slugifiable"
class Song < ActiveRecord::Base
  include Slug
  has_many :song_genres
  has_many :genres, through: :song_genres
  belongs_to :artist
end
