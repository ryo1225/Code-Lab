class UsersController < ApplicationController

before_action :authenticate_user!

  def show
  	@user = User.find(params[:id])
  	@labs = @user.labs.page(params[:page]).per(6)
  end
  def edit
  	@user = User.find(params[:id])
  end
  def update
  	@user = User.find(params[:id])
      if @user.update(user_params)
  	     redirect_to user_path(@user)
      else
        render action: :edit
      end
  end
  def favorites
  	@user = User.find(params[:id])
  	@favorites = Favorite.where(user_id: @user.id)
  end
  private
    def user_params
      params.require(:user).permit(:name, :email, :word, :profile_image)
    end

end

