# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_third_session',
  :secret      => 'b071e98022a34412a8ab5e81b2561afc043e8dc945c6d27aa1eddbb078fbf4881587aeec27d62f72e20855f5dc7a6b822b4c3ce125f337079da018cfaf94b2bc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
