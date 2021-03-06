class LabsController < ApplicationController

 before_action :authenticate_user!

  def new
  	@lab = Lab.new
    @user = current_user
  end
  def create
  	@lab = Lab.new(lab_params)
  	@lab.user_id = current_user.id
  	if @lab.save
  	   redirect_to labs_path
  	else
  	   render action: :new
    end
  end
  def index
  	@labs = Lab.all.order(created_at: :desc)
  	@user = current_user
    @all_ranks = Lab.recent
  end
  def show
  	@lab = Lab.find(params[:id])
    @lab_comment = LabComment.new
    @lab_comments = @lab.lab_comments
    @user = current_user
  end
  def edit
  	@lab = Lab.find(params[:id])
  end
  def update
  	@lab = Lab.find(params[:id])
  	if @lab.update(lab_params)
  	   redirect_to lab_path(@lab)
  	else
  		render action: :edit
  	end
  end
  def destroy
  	@lab = Lab.find(params[:id])
  	@lab.destroy
  	redirect_to labs_path
  end
  private
  def lab_params
  	params.require(:lab).permit(:title, :introduction, :month, :day, :time, :region, :place, :language, :price, :image, :people)
  end

end
