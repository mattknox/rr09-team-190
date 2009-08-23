# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_swabwebs_session',
  :secret      => '7a8e543a8d0c6d37136d9365912d1f8dd2e84f4fdce88cf3e7ff1b39f5f466566e04f23f726aed7546778e4982e1b4703934977ff1cc4a7abfb889fc12cca1ed'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
