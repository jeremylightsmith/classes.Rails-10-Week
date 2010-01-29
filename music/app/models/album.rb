class Album < ActiveRecord::Base
  belongs_to :artist
  validates_presence_of :name
  
  def inspect
    "Album(#{name})"
  end
end
