class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response 
    rescue_from ActiveRecord::RecordInvalid, with: :render_errors


    #GETS /restaurants
    def index
        restaurants = Restaurant.all 
        render json: restaurants
    end
    
    #GET /restaurants/:id
    def show
        restaurant = find_restaurant
        render json: restaurant,  serializer: RestaurantPizaSerializer
    end
    
    #DELETE /restaurants/:id
    def destroy
        restaurant = find_restaurant
        restaurant.destroy
       head :no_content
    end

    private
    def find_restaurant
         Restaurant.find(params[:id])  
    end
 
 
    def render_not_found_response
         render json: { error: "Restaurant not found" }, status: :not_found
    end


    def render_errors(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
