class Album < ActiveRecord::Base
  belongs_to :artist
  
  def inspect
    "Album(#{name})"
  end
end
