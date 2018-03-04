module MangasHelper
	def manga_params
		params.require(:manga).permit(:titre, :titre2, :lien ,:background,:image, :description, :couleur, :duree, :annee)
	end
end
