class GameController < ApplicationController

	def index
	end
	def create
		@game = Game.new( params.require(:game).permit(:teams, :activePracticalQuestion, :activePopQuestion, :inProgress) )
		if @game.save
			redirect_to(:action => 'start', :id => @game.id)
		else
			render('new')
		end	
	end

	def list
		@games = Game.order("games.inProgress ASC")
	end

	def edit
		@game = Game.find (params[:id])
	end	
	
	def destroy
		@game = Game.find (params[:id])
		@game.destroy
		redirect_to(:action => 'list')
	end
	def start
		@game = Game.find (params[:id])
	end
end
