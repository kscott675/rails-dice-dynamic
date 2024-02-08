Rails.application.routes.draw do
  root 'pages#home'
  get("/dice/:number_of_dice/:how_many_sides", to: 'pages#play', as: 'play')
end
