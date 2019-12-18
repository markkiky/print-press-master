Rails.application.routes.draw do
  devise_for :users
  root 'index#index'
  post 'index/upload_file'
  post 'index/upload_schedule'
  get '/index/edit_permit/:id', to: 'index#edit_permit', as: :edit_permit
  post 'index/update/:id', to: 'index#update', as: :update
  get '/print_permit/:id', to: 'index#print_permit', as: :print_permit
  get '/print_permit_new/:id', to: 'index#print_permit_new', as: :print_permit_new
 
  post '/index/create_permit', to: 'index#create_permit', as: :create_permit
  post '/index/renewal_permit/', to: 'index#renewal_permit', as: :renew_permit
  delete '/index/delete/:id', to: 'index#delete', as: :delete_permit
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
