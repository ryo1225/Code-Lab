class AttendsController < ApplicationController

    def create
     @lab = Lab.find(params[:lab_id])
     attend = @lab.attends.new(user_id: current_user.id)
     attend.save
     redirect_to request.referer
    end
    def destroy
      @lab = Lab.find(params[:lab_id])
      attend = current_user.attends.find_by(lab_id: @lab.id)
      attend.destroy
      redirect_to request.referer
    end

end

