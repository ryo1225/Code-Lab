class FavoritesController < ApplicationController

before_action :authenticate_user!

  def create
    @lab = Lab.find(params[:lab_id])
    favorite = @lab.favorites.new(user_id: current_user.id)
    favorite.save
  end

  def destroy
     @lab = Lab.find(params[:lab_id])
     favorite = current_user.favorites.find_by(lab_id: @lab.id)
     favorite.destroy
  end

end
