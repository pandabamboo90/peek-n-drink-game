Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms
  post 'pick_card', to: 'cards#pick_card'
  mount ActionCable.server => '/cable'
end
