class VotesController <ApplicationController	

	def index
		@votes = Vote.all
		@movies = Movie.all
	end

	def create
		@movie = Movie.find(params[:movie_id])
		@vote = @movie.votes.create
		if @vote.save
			flash[:notice] = "You have voted for this movie"
			redirect_to votes_path
		else
			flash[:alert] = "You are unable to vote."
		end
	end



end