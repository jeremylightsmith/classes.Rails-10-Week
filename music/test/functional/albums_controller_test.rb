require 'test_helper'

class AlbumsControllerTest < ActionController::TestCase
  test "should show an album" do
    album = Album.create!(:name => "Ocean Eyes")
    
    get :show, :id => album.to_param
    
    assert_response :success, @response.body
    assert_equal album, assigns(:album)
  end
  
  test "show all albums" do
    one = Album.create!(:name => "One")
    two = Album.create!(:name => "Two")
    
    get :index
    
    assert_response :success, @response.body
    assert_equal [one, two], assigns(:albums)
  end
  
  test "create an album" do
    post :create, :album => {:name => "Ten"}
    
    album = assigns(:album)
    assert_not_nil album
    assert_redirected_to album_path(album)
  end
  
  test "show a new album page" do
    get :new
    
    assert_response :success
    album = assigns(:album)
    assert album.new_record?
  end
  
  test "show an edit album page" do
    album = Album.create!(:name => "foo")
    
    get :edit, :id => album.to_param
    
    assert_response :success
    assert_equal album, assigns(:album)
  end

  test "update an album" do
    album = Album.create!(:name => "bar")

    put :update, :id => album.to_param, :album => {:name => "baz"}
    
    assert_redirected_to album_path(album)
    album.reload
    assert_equal "baz", album.name
  end
  
  test "delete an album" do
    album = Album.create!(:name => "foo")
    
    delete :destroy, :id => album
    
    assert_redirected_to albums_path
    assert !Album.exists?(album)
  end
end
