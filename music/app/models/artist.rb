class Artist < ActiveRecord::Base
  has_many :albums
  
  def inspect
    "Artist(#{name})"
  end
  
  def photo
    random_photo_to_show_for_now = %w(fear hendrix maxingquaye riding_with_the_king)[rand(4)]
    Photo.new("/images/album_art/#{random_photo_to_show_for_now}.jpg")
  end
  
  class Photo < Struct.new(:url)
  end
  
end
