# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
BetyRails3::Application.initialize!

# config/initializers/bigint_primary_keys.rb
ActiveRecord::Base.establish_connection
ActiveRecord::ConnectionAdapters::PostgreSQLAdapter::NATIVE_DATABASE_TYPES[:primary_key] = 'bigserial primary key'
ActiveRecord::ConnectionAdapters::Mysql2Adapter::NATIVE_DATABASE_TYPES[:primary_key] = "BIGINT UNSIGNED DEFAULT NULL auto_increment PRIMARY KEY"
