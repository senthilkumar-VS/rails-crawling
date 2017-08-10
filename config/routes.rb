Rails.application.routes.draw do
  resources :crawls
  root :to => "crawls#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
