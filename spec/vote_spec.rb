require 'rails_helper'
describe Vote do 
	it{should validate_presence_of :movie_id}
	it{ should belong_to :movie}
end