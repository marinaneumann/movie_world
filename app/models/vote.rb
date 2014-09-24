class Vote <ActiveRecord::Base
	validates :movie_id, :presence => true
	belongs_to :movie
end