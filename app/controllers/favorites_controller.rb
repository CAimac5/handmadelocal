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
    @favorite = Favorite.create(params[:favorite])

  end

  def destroy

  end



end
