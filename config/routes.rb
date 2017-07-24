Rails.application.routes.draw do
  
  root 'welcome#index'
  resources :contacts, only: [:new, :create]
  get 'imprint' => 'static_pages#imprint'

end
