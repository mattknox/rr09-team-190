RAILS_GEM_VERSION = '2.3.3' unless defined? RAILS_GEM_VERSION
PROJECT_NAME = "playvids"

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'youtube-g', :lib => 'youtube_g'
  config.time_zone = 'UTC'
end
