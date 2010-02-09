require 'test_helper'

class TracksControllerTest < ActionController::TestCase
  test "index should return all tracks" do
    track1 = Track.create! :name => "t1"
    track2 = Track.create! :name => "t2"

    get :index
    
    assert_response :success
    assert_equal [track1, track2], assigns(:tracks)
  end
  
  test "should show a track" do
    track = Track.create! :name => "t1"
    
    get :show, :id => track.to_param
    
    assert_response :success
    assert_equal track, assigns(:track)
  end
  
  test "should create a track" do
    post :create, :track => {:name => "Stairway to Heaven", :number => "5"}
    
    track = assigns(:track)
    assert_not_nil track
    assert_redirected_to "/tracks/#{track.id}"
    assert_redirected_to track_path(track)
    
    assert !track.new_record?
    assert_equal "Stairway to Heaven", track.name
    assert_equal 5, track.number
  end

  test "should not create a track if errors" do
    post :create, :track => {:name => ""}
    
    track = assigns(:track)
    assert_not_nil track
    assert_response :success
    
    assert track.new_record?
    assert_equal 1, track.errors.size
    assert_template "tracks/new.html.erb"
  end
end
