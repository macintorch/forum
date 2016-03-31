Rails.application.routes.draw do
   
  #get 'welcome/index'
  root 'messages#index'

  devise_for :users, class_name: 'FormUser', controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations'}
   resources :messages do
   		resources :comments 
   	end

   
end
