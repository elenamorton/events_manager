require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/place'

# setup the connection with the database
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/events_manager_#{ENV['RACK_ENV']}")
    
# check that what is written in our models was OK
DataMapper.finalize
# build new added columns or tables
DataMapper.auto_upgrade!