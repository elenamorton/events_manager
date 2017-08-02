class Place
    
    X_MIN = -10
    X_MAX = 10
    Y_MIN = -10
    Y_MAX = 10

    DISTANCE_MAX = X_MAX - X_MIN + Y_MAX- Y_MIN
    
    # add DataMapper functionality to this class so it can communicate with the database
    include DataMapper::Resource
    
    # these property declarations set the column headers in the 'Places' table
    property :id,           Serial
    property :x_position,   Integer, required: true
    property :y_position,   Integer, required: true
   
    def initialize(x_position, y_position)
        srand(1)
        @x_position = x_position || randomizer("x")
        @y_position = y_position || randomizer("y")
    end

    private
    
    def randomizer(axis)
       rand(X_MIN..X_MAX) if axis == "x"
       rand(Y_MIN..Y_MAX) if axis == "y"
       fail "Wrong axis given"
    end

end