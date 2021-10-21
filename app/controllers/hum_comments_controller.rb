class HumCommentsController < ApplicationController
  def create
    genre = Genre.find(params[:genre_id])
    comment = current_user.hum_comments.new(hum_comment_params)
    comment.genre_id = genre.id
    comment.save
    redirect_to genre_path(genre.id)
  end

  def destroy
    HumComment.find_by(id: params[:id]).destroy
    redirect_to gen_path(params[:genre_id])
  end

  private

  def hum_comment_params
    params.require(:hum_comment).permit(:comment)
  end
end
