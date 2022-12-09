class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_errors
    
     
     #GET /restaurant_pizzas
     def index
       restaurant_pizzas = RestaurantPizza.all
       render json: restaurant_pizzas
     end


    # POST /restaurant_pizza
  def create
    restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
    render json: restaurant_pizza.pizza,  status: :created
  end

    private

    def restaurant_pizza_params
      params.permit(:price, :pizza_id, :restaurant_id)
    end
  
    
    def render_errors(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
