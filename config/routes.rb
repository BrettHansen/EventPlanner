EventPlanner::Application.routes.draw do

  devise_for :users
  root 'events#index'
  match '/events/:id/delete', to: 'events#destroy', via: :delete, :as => :destroy_event
  resources :events, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :users do
    resources :tickets, only: [:new, :create]
  end

  match '/my_events', to: 'tickets#show', via: :get
end
