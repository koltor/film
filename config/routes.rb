Rails.application.routes.draw do

  resources :filmes
  resources :saisons
  resources :episodes
  resources :genres
  resources :genreassemblies
  resources :repliques
  resources :users

  get '/series' ,to: 'mangas#index' ,as:'mangas'
  post '/series' ,to: 'mangas#create'
 	get '/series/new' ,to: 'mangas#new' ,as: 'new_manga'
  get '/series/:id/edit',to: 'mangas#edit' ,as: 'edit_manga'
  get '/series/:id' ,to: 'mangas#show' ,as: 'manga'
  patch '/series/:id' ,to: 'mangas#update'
  delete '/series/:id' 	,to: 'mangas#destroy'

  root to: 'static_pages#index', as:'home'
  get '/admin',to: 'static_pages#admin' , as:'admin'
  get '*path', to: 'static_pages#erreur404'#erreur 404

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
