Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "contributes#index"
  post "contribute/@contribute" => "contributes#create"
  get "contribute/classify" => "contributes#classify"
  resources :contributes
end
