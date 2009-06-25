# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_moneybuckets_session',
  :secret      => '9e02bdb6a4cd3051b57ce25d022aec7f2a39da1295fe59ed2bbcebd671147d19f0c95515ce219250304edf5811279022cbfd627ce1c66a3843e19eae907f4149'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
#ActionController::Base.session_store = :active_record_store
