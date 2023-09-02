Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  # TODO: here we creating the custom route
  # todo to create the custom route we have to tell the controller and action name,
  get 'member/:id', to: 'members#show', as: 'member'
end
