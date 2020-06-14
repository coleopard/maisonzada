Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/menu', to: 'pages#menu'
  get '/contact', to: 'pages#contact'

  get '/contact', to: 'messages#new', as: 'new_message'
  post 'messages', to: 'messages#create', as: 'create_message'
end



