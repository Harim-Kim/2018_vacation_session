class LikeController < ApplicationController
  def likepost
    like = Postlike.find_by(user_id: current_user.id, post_id: params[:post_id])
    if like.nil?
        Postlike.create(user_id: current_user.id,
                    post_id: params[:post_id])
    else
        like.destroy
    end
    redirect_to :back
  end
end
