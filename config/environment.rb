# Load the Rails application.
require File.expand_path('../application', __FILE__)
provider :google_auth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET']
# Initialize the Rails application.
Rails.application.initialize!
