# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bdash_session',
  :secret      => '706c3e1d3eb7343aeaf93ce793e8d46a237e01d8d82204f21e7689c2391baa20862b9396fccb23134343225457247602d1249678824c54f3407baff38b9b4219'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
