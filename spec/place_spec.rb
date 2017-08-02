require_relative '../app/models/place.rb'

describe Place do
    subject(:place) { described_class.new }

    it 'should have coordinates on X axis below maximum allowed ' do
        expect(place.x_position).to be <= Place::X_MAX 
    end
    
    it 'should have coordinates on X axis above minimum allowed ' do
        expect(place.x_position).to be >= Place::X_MIN
    end
    
    it 'should have coordinates on Y axis below maximum allowed ' do
        expect(place.y_position).to be <= Place::Y_MAX 
    end
    
    it 'should have coordinates on X axis above minimum allowed ' do
        expect(place.y_position).to be >= Place::Y_MIN
    end
    
end