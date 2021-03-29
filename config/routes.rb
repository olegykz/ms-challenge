Rails.application.routes.draw do
  root to: redirect('/recipes')

  resources :recipes, only: %i[index show]
end
