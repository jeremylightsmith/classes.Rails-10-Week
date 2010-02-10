# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
bob = Artist.create! :name => "Bob Dylan", :genre => "Rock"
album = bob.albums.create! :name => "The Essential Bob Dylan"
album.tracks.create! :number => 1, :name => "Blowin' in the Wind"
album.tracks.create! :number => 2, :name => "Don't Think Twice, It's All Right"
album.tracks.create! :number => 3, :name => "The Times, They Are A-Changin'"
album.tracks.create! :number => 4, :name => "It Ain't Me, Babe"
album.tracks.create! :number => 5, :name => "Maggie's Farm"
album.tracks.create! :number => 6, :name => "It's All Over Now, Baby Blue"
album.tracks.create! :number => 7, :name => "Mr. Tambourine Man"
album.tracks.create! :number => 8, :name => "Subterranean Homesick Blues"
album.tracks.create! :number => 9, :name => "Like a Rolling Stone"

album = bob.albums.create! :name => "Together Through Life"
album.tracks.create! :number => 1, :name => "Beyond Here Lies Nothin'"
album.tracks.create! :number => 1, :name => "Life is Hard"

album = bob.albums.create! :name => "Highway 61 Revisited", :release_date => Date.parse("1965-01-01")
album = bob.albums.create! :name => "Christmas in the Heart"
album = bob.albums.create! :name => "The Freewheelin' Bob Dylan"
album = bob.albums.create! :name => "Bob Dylan's Greatest Hits", :release_date => Date.parse("1967-03-27")
album = bob.albums.create! :name => "Modern Times"
album = bob.albums.create! :name => "The Bootleg Series, Vol 8: Tell Tale Signs"
album = bob.albums.create! :name => "Blood on the Tracks"

jimi = Artist.create! :name => "Jimi Hendrix", :genre => "Rock"
album = jimi.albums.create! :name => "Experience Hendrix"
album = jimi.albums.create! :name => "Voodoo Child"

toad = Artist.create! :name => "Toad the Wet Sprocket", :genre => "Alternative"
album = toad.albums.create! :name => "Fear"
album = toad.albums.create! :name => "In the Light Syrup"
album = toad.albums.create! :name => "P.S."

