# frozen_string_literal: true

require 'simplecov'
SimpleCov.start

# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

# require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require File.expand_path('rails610/config/environment.rb', __dir__)
require 'rails/test_help'

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].sort.each { |f| require f }

# Load fixtures from the engine
if ActiveSupport::TestCase.method_defined?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path =
    File.expand_path('fixtures', __dir__)
end
