class LabsController < ApplicationController

  def new
  	@lab = Lab.new
  end
  def create
  	@lab = Lab.new(lab_params)
  	@lab.save
  	redirect_to labs_path
  end
  def index
  	@labs = Lab.all
  end
  def show
  	@lab = Lab.find(params[:id])
  end
  def edit
  	@lab = Lab.find(params[:id])
  end
  def update
  	@lab = Lab.find(params[:id])
  	@lab.update(lab_params)
  	redirect_to lab_path(@lab)
  end
  def destroy

  end
  private
  def lab_params
  	params.require(:lab).permit(:title, :introduction, :month, :day, :time, :region, :place, :language, :price, :image, :people)
  end

end
