class FavoritesController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @favorites = @user.favorites.all
  end

  def new
    @favorite = Favorite.new
    @user = current_user
    @item = Item.first
  end

  def create
    @favorite = Favorite.new
    @favorite.user_id = current_user.id
    @favorite.item_id = params[:id]
    @favorite.save
    redirect_to item_url(params[:id]), :notice => "Item has been added to Favorites"
  end

  def edit
    @favorite = Favorite.find(params[:id])
  end
  
  def update
  
  end  
  
  def destroy

  end



end
