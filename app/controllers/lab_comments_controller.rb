class LabCommentsController < ApplicationController

before_action :authenticate_user!

  def create
    @lab = Lab.find(params[:lab_id])
    @lab_comment =LabComment.new(lab_comment_params)
    if @lab_comment.save
      redirect_to lab_path(@lab)
    else
      @user = current_user
      @lab_comments = LabComment.where(lab_id: @lab.id)
      render '/labs/show'
    end
  end
  def destroy
	 @lab_comment = LabComment.find(params[:lab_id])
	 @lab_comment.destroy
	 redirect_to request.referer
  end
  private
  def lab_comment_params
    params.require(:lab_comment).permit(:comment).merge({lab_id: @lab.id, user_id: current_user.id})
  end
end
