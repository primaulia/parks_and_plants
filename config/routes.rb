Rails.application.routes.draw do
  root to: 'gardens#index'

  resources :gardens do
    resources :plants, only: [:create]
  end

  # GET /plants/:plant_id/plant_tag/new => FORM
  # POST /plants/:plant_id/plant_tag
  resources :plants, only: [:destroy] do
    resources :plant_tags, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
