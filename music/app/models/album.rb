class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :tracks
  validates_presence_of :name
  has_attached_file :photo, :styles => {:medium => "150x150", :thumb => "100x100>"}
  
  def inspect
    "Album(#{name})"
  end
end
