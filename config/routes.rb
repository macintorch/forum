Rails.application.routes.draw do
   
  #get 'welcome/index'

  devise_for :users, class_name: 'FormUser', controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations'}
   resources :messages

   root 'messages#index'
end
