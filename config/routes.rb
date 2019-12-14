Rails.application.routes.draw do
  devise_for :users
  root 'index#liqour_permits'
  post 'index/upload_file'
  post 'index/upload_schedule'
  get '/license/print/:id', to: 'index#print_permit', as: :print_permit
  get '/license/print/new/:id', to: 'index#print_permit_new', as: :print_permit_new
  post '/license/create/new/', to: 'index#create_permit', as: :create_permit
  post '/license/create/renewal/', to: 'index#renewal_permit', as: :renew_permit
  delete '/license/:id/delete', to: 'index#delete', as: :delete_permit
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
