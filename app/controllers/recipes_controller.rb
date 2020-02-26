class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def create
        user_id = User.find_or_create_by(username: recipe_params[:user]).id
        new_recipe = Recipe.create(user_id: user_id, name:recipe_params[:name])
        redirect_to recipe_path(new_recipe)
    end

    def edit
        
    end

    def update
        
    end

    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
        redirect_to recipes_path
    end

    private

    def recipe_params
        params.require(:recipe).permit(:user,:name)
    end
end
