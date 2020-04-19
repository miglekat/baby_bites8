

Rails.application.routes.draw do
  resources :categories
  get 'cart/index'
get 'category/:title', to: 'static_pages#category'
  resources :menus
  #get 'static_pages/home'
  root 'static_pages#home'
  #get 'static_pages/help'
  
  get '/help' => 'static_pages#help'
  
 get '/aboutSend/:id' => 'static_pages#aboutSend'
  
  get '/about' => 'static_pages#about'
  
  get '/login', to: 'user#login'
  get '/logout', to: 'user#logout'
  
  
  get '/clearcart', to: 'cart#clearCart'
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id' => 'cart#remove'
  get '/cart/decrease/:id' => 'cart#decrease'
  
  #root :to => 'static_pages#home'
  root :to => 'site#home'
  
  get 'orderitems/index'

  get 'orderitems/show'

  get 'orderitems/new'

  get 'orderitems/edit'

post '/search' => 'menus#search'

  resources :orders do 
    resources:ordermenus
  end
  
  devise_for :users do 
    resources :orders
  end
  
  get '/checkout' => 'cart#createOrder'
  get '/paid/:id' => 'static_pages#paid'
  #get 'static_pages/about'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

