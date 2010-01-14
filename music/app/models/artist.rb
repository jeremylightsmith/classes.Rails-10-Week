class Artist < ActiveRecord::Base
  has_many :albums
  
  def inspect
    "Artist(#{name})"
  end
end
