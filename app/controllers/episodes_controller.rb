class EpisodesController < ApplicationController
	def index
		@episodes = Episode.all
	end

	def show
		@episode = Episode.find(params[:id])
    @saison = Saison.find_by_id(@episode.saison_id)
    @manga = Manga.find_by_id(@saison.manga_id)
		respond_to do |f|
    	f.js
    	f.html
  	end
	end

	 def new()
  	@episode = Episode.new()
  	@saison = Saison.find(params[:id])
  	
  	respond_to do |f|
    	f.js
    	f.html
  	end
 	 end

   def edit()
    @episode = Episode.find(params[:id])
    @saison = Saison.find_by_id(@episode.saison_id)
   end

   def update()
    @episode = Episode.find(params[:id])
    @saison = Saison.find_by_id(@episode.saison_id)
    @manga = Manga.find_by_id(@saison.manga_id)
    @episode.update(episode_params)

    respond_to do |f|
      f.js
      f.html
    end

   end 

 	 def create()

 	 	@episode = Episode.new(episode_params)
 	 	@saison = Saison.find(params[:id])
 	 	@manga = Manga.find_by_id(@saison.manga_id)
 	  @episode.save
 	 	@saison.episodes << @episode

 	 	respond_to do |f|
    	f.js
    	f.html
  	end
 	 end

 	 def destroy
 	 		Episode.destroy(params[:id])
 	 		redirect_to episodes_path
 	 end

  def episode_params
		params.require(:episode).permit(:saison_id, :titre, :num,:description, :duree,:langue,:sous_titre,:video)
	end
end
