class Album < ActiveRecord::Base
  belongs_to :artist
  validates_presence_of :name
  # has_attached_file :photo, :styles => {:medium => "300x300", :thumb => "100x100>"}
  
  def inspect
    "Album(#{name})"
  end
end
