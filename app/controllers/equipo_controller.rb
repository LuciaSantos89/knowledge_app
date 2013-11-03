class EquipoController < ApplicationController
	def index
	end
	def create
		@equipo = Equipo.new( params.require(:equipo).permit(:name))
		@equipo.score = 0;
		if @equipo.save
			redirect_to(:action => 'new')
		else
			render('new')
		end	
	end

	def list
		@equipos = Equipo.order("equipos.name ASC")
	end

	def edit
		@equipo = Equipo.find (params[:id])
	end	
	
	def destroy
		@equipo = Equipo.find (params[:id])
		@equipo.destroy
		redirect_to(:action => 'list')
	end

end
