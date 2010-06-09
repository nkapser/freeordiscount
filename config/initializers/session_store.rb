# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_freeordiscount_session',
  :secret      => '8699fb4705a39bb4d9935f3a78be78e29d4d9e15155d1e3e498f40e3f52767037b90122540d523773c42760f4326c288701056bd5ac063185d172936a457931e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
