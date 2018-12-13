require_relative "./concerns/slugifiable"
class Artist < ActiveRecord::Base
  include Slug
  has_many :songs
  has_many :genres, through: :songs

  def slug
    self.name.gsub(" ", "-").downcase
  end

  def find_by_slug(slug)
    self.all.find{|instance| instance.slug == slug}
  end
end
