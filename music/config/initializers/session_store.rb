# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_music_session',
  :secret      => 'fb903435968cb0851102c70bcf713fd14c1aa181bb394d978ff928a0037116ac30cb82f7e0a42bd6b077e78f9812ef71fde3d01f317d9afb44ddd28f8de18c70'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
