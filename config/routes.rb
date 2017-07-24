Rails.application.routes.draw do
  
  root 'welcome#index'
  resources :contacts#, only: [:new, :create]
  #resources :welcomes, only: [:new, :create, :index]
  get 'imprint' => 'static_pages#imprint'

end
