class Place
    
    X_MIN = -10
    X_MAX = 10
    Y_MIN = -10
    Y_MAX = 10
    X_COORDINATES = [X_MIN..X_MAX]
    Y_COORDINATES = [Y_MIN..Y_MAX]
    DISTANCE_MAX = X_MAX - X_MIN + Y_MAX- Y_MIN
    
    # add DataMapper functionality to this class so it can communicate with the database
    include DataMapper::Resource
    
    # these property declarations set the column headers in the 'Places' table
    property :id,           Serial
    property :x_position,   Integer, required: true
    property :y_position,   Integer, required: true
   
    def initialize(x_position = X_COORDINATES.sample, y_position = Y_COORDINATES.sample)
        @x_position = x_position
        @y_position = y_position
    end


end