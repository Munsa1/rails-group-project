class FoodsController < ApplicationController
  
  def index
    @foods = Food.all
  end

  def show
     @user = User.find(params[:user_id])
    @foods = Food.all
  end

  def new
    @categories = ['grams', 'milligrams', 'killograms', 'pound', 'ounce', 'litre', 'cup', 'teaspoon', 'spoon',
                   'fluid ounce']
  end

  def create
    
    @food = Food.new(Name:params[:Name],unit:params[:unit],price:params[:price],user_id:1)
    @food.user_id = current_user.id

    if @food.save
      flash[:success] = 'added succesfully!'
       redirect_to '/foods/index'
    else
      render :new
      flash[:success] = 'something went wrong!'
    end
  end

  def destroy
     @food = Food.find(params[:id])
    @user = User.find(params[:user_id])
    @food.destroy!
    @user.save
    redirect_to user_foods_path
    flash[:success] = 'food was deleted!'
  end

  private

  def mass_params
    params.require(:food).permit(:Name, :unit, :price)
  end
  
end
