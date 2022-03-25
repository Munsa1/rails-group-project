class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end
  def show
    @recipe = Recipe.find(params[:id])
    @recipe_food = Recipe.where(recipe_id: params[:recipe_id])
  end

  def new
    @recipe = Recipe.new
    @foods = Food.all
  end

  def create
    @recipe = Recipe.new(Name:params[:name],preperationtime:params[:preperationtime],cookingtime:params[:cookingtime],description:params[:description],public:params[:public],user_id:current_user.id)
    @recipe.user_id = current_user.id
    if @recipe.save
      flash[:notice] = 'Recipe successfully created'
      redirect_to @recipe
    else
      flash[:notice] = 'Something went wrong'
      render 'new'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:notice] = 'The recipe was successfully destroyed.'
    redirect_to recipes_url
  end
end
