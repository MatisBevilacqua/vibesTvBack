Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # Afficher les informations de l'acceuil
      # GET : http://127.0.0.1:3000/api/v1/news
      resources :news


      # Formulaire de contact
      # POST : http://127.0.0.1:3000/api/v1/contacts/create
      resources :contacts
    end
  end
end