Rails.application.routes.draw do
  resources :restaurant_pizzas, only:[:index,:create]
  resources :restaurants, only:[:index, :show, :destroy]
  resources :pizzas,only:[:index]
 
end
