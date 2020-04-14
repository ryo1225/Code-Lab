class FavoritesController < ApplicationController

  def create
    @lab = Lab.find(params[:lab_id])
    favorite = @lab.favorites.new(user_id: current_user.id)
    favorite.save
    redirect_to request.referer
  end

  def destroy
     @lab = Lab.find(params[:lab_id])
     favorite = current_user.favorites.find_by(lab_id: @lab.id)
     favorite.destroy
     redirect_to request.referer
  end
    private
    def redirect
      case params[:redirect_id].to_i
    	when 0
      	redirect_to labs_path
    	when 1
      	redirect_to lab_path(@lab)
      end
  	end
end
