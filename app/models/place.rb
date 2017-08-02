require 'data_mapper'
require 'dm-postgres-adapter'

class Place
    # add DataMapper functionality to this class so it can communicate with the database
    include DataMapper::Resource
    
    # these property declarations set the column headers in the 'Places' table
    property :id,           Serial
    property :position_x,   Integer, required: true
    property :position_y,   Integer, required: true
   
    # setup the connection with the database
    DataMapper.setup(:default, "postgres://localhost/events_manager_test")
    # check that what is written in our models was OK
    DataMapper.finalize
    # build new columns or tables added
    DataMapper.auto_upgrade!
end