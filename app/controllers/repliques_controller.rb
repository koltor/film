class RepliquesController < ApplicationController
	def index
		@repliques = Replique.all
		@replique = Replique.new()
	end

	def create
		@repliques = Replique.all
		replique = Replique.new(replique_params)
		replique.save
		@replique = Replique.new()
	end

	def destroy
		Replique.destroy(params[:id])
		redirect_to repliques_path
	end

	def show
	end

	def replique_params
		params.require(:replique).permit(:source, :corps)
	end	
end
