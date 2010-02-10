class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :tracks
  validates_presence_of :name
  # has_attached_file :photo, :styles => {:medium => "300x300", :thumb => "100x100>"}
  
  def inspect
    "Album(#{name})"
  end
  
  def photo
    random_photo_to_show_for_now = %w(fear hendrix maxingquaye riding_with_the_king)[rand(4)]
    Photo.new("/images/album_art/#{random_photo_to_show_for_now}.jpg")
  end
  
  class Photo < Struct.new(:url)
  end
end
