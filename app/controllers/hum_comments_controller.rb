class HumCommentsController < ApplicationController
  def create
    @hum = Hum.find(params[:hum_id])
    comment = current_user.hum_comments.new(hum_comment_params)
    comment.hum_id = hum_id
    comment.save
    redirect_to hum_path(hum.id)
  end

  def destroy
  end

  private

  def hum_comment_params
    params.require(:hum_comment).permit(:comment)
  end
end
