class PizzasController < ApplicationController

    #GET  /Pizzas 
    def index
        pizza =Pizza.all
        render json: pizza
    end  


    
end
