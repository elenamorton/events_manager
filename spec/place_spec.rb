require_relative '../app/models/place.rb'

describe Place do
    subject(:place) { described_class.new }

    it 'should have coordinates on X axis below maximum allowed ' do
        expect(Place::X_COORDINATES).to include place.x_position
    end
    
    it 'should have coordinates on X axis above minimum allowed ' do
        expect(Place::X_COORDINATES).to include place.x_position
    end
    
    it 'should have coordinates on Y axis below maximum allowed ' do
        expect(Place::Y_COORDINATES).to include place.y_position
    end
    
    it 'should have coordinates on X axis above minimum allowed ' do
        expect(Place::Y_COORDINATES).to include place.y_position
    end
    
end