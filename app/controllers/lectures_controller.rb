class LecturesController < InheritedResources::Base
  before_action :set_lecture, :set_user , only: [:like, :unlike]

  def like
    @user.lectures << @lecture
    @user.save
    respond_to do |format|
      format.html { redirect_to "/lectures/#{params[:id]}", notice: 'Lecture was successfully liked' }
    end
  end
  def unlike
    @user.lectures.delete(Lecture.find(@lecture.id))
    respond_to do |format|
      format.html { redirect_to "/lectures/#{params[:id]}", notice: 'Lecture was successfully un liked' }
    end
  end

  private

    def lecture_params
      params.require(:lecture).permit(:content, :attachement, :course_id, :user_id)
    end
    def set_user
      @user = current_user
    end
    def set_lecture
      @lecture = Lecture.find(params[:id])
    end
end

