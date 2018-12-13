module Slug
  module InstanceMethod
    def slug
      self.name.gsub(" ", "-").downcase
    end
  end

  module ClassMethod
    def self.find_by_slug(slug)
      self.all.find{|instance| instance.slug == slug}
    end
  end

end
