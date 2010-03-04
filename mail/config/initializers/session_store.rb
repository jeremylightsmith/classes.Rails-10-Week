# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mail_session',
  :secret      => '27baa42ca65253a91e90bea6301de5f388371f09647918223c17a6deab02dd482dee0e3ce4775131d6efc674f4d16ac00d7e5d068652d76769cbdfc9b6bbe9bc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
