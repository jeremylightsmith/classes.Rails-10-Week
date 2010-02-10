require 'test_helper'

class AlbumsControllerTest < ActionController::TestCase
  def setup
    @artist = Artist.create!(:name => "Led Zeppelin")
  end
  
  test "should show an album" do
    album = @artist.albums.create!(:name => "Ocean Eyes")
    
    get :show, :id => album.to_param
    
    assert_response :success, @response.body
    assert_equal album, assigns(:album)
  end
  
  test "show all albums" do
    one = @artist.albums.create!(:name => "One")
    two = @artist.albums.create!(:name => "Two")
    
    get :index
    
    assert_response :success, @response.body
    assert_equal [one, two], assigns(:albums)
  end
  
  test "return json when we get a js request" do
    one = @artist.albums.create!(:name => "One")
    two = @artist.albums.create!(:name => "Two")
    
    get :index, :format => "js"
    
    assert_response :success, @response.body
    assert_equal [one, two].to_json, @response.body
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
    album = @artist.albums.create!(:name => "foo")
    
    get :edit, :id => album.to_param
    
    assert_response :success
    assert_equal album, assigns(:album)
  end

  test "update an album" do
    album = @artist.albums.create!(:name => "bar")

    put :update, :id => album.to_param, :album => {:name => "baz"}
    
    assert_redirected_to album_path(album)
    album.reload
    assert_equal "baz", album.name
  end
  
  test "delete an album" do
    album = @artist.albums.create!(:name => "foo")
    
    delete :destroy, :id => album
    
    assert_redirected_to albums_path
    assert !@artist.albums.exists?(album)
  end
end
