Rails.application.routes.draw do
  root :to => "restaurants#home"
  #Restaurant Routes
  get 'restaurants/registration', to: 'restaurants#registration'
  post 'restaurants/register', to: 'restaurants#register'
  get 'restaurants/info/:id', to: 'restaurants#info'
  post 'restaurants/create_menutype', to: 'restaurants#create_menutype'
  post 'restaurants/create_dish', to: 'restaurants#create_dish'

  get 'restaurants/info/:id/edit_registration', to: 'restaurants#edit_registration'
  patch 'restaurants/info/:id/update', to: 'restaurants#restaurant_update'
  get '/restaurants/:id/deactivate', to: 'restaurants#deactivate'

  #Customer Routes
  get 'cus/:id/homepage', to: 'customers#homepage'
  get 'customers/registration', to: 'customers#registration'
  post 'customers/register', to: 'customers#register'
  get 'customers/:id/edit_creg', to: 'customers#edit_creg'
  patch 'customers/:id/update', to: 'customers#customer_update'

  get 'cus/:id/res_info/:id', to: 'customers#res_info'

  #Menutype
  get 'menutypes/new', to: 'menutypes#new'
  post 'menutypes/create', to: 'menutypes#create'

end
