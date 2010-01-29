require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "must have name" do
    album = Album.new
    assert_equal false, album.save
    assert_equal "can't be blank", 
              album.errors.on(:name)
  end
end
