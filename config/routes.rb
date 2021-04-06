Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hello' => 'home#index'

  resources 'memos', only: %i[index show new create]

  root 'home#index'
end
