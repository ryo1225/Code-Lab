class LabCommentsController < ApplicationController

  def create
    @lab = Lab.find(params[:lab_id])
    @lab_comment = @lab.lab_comments.new(lab_comment_params)
    @lab_comment.user_id = current_user.id
    @lab_comment.save
    redirect_to lab_path(@lab)
  end
  def destroy
	@lab_comment = LabComment.find(params[:lab_id])
	@lab_comment.destroy
	redirect_to request.referer
  end
  private
  def lab_comment_params
    params.require(:lab_comment).permit(:comment)
  end
end
