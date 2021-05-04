class Api::PokemonController < ApplicationController

    def index
        @pokemons = Pokemon.all
        render :index
    end

    def show 
        @move = Move.find(params[:id])
        @item = Item.find(params[:id])
        @pokemon = Pokemon.find(params[:id])
        render :show
    end
end
 