class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show; end

  def new; end

  def create; end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:notice] = 'The recipe was successfully destroyed.'
    redirect_to recipes_url
  end
end
