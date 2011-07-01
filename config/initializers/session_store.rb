# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ha-project_session',
  :secret      => 'ab44fe7677b3f4cfdaae87b64b59010aff224e8163b2c31b2422586bf189c6d6fd1214addb1cfde6ff49c5575dd3cfd269ba63fe327b1ccf60f7553696af85ca'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
