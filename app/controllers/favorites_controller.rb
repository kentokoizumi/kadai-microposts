class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:good_id])
    current_user.good(micropost)
    flash[:success] = 'お気に入りしました。'
    redirect_to :back
  end

  def destroy
    micropost = Micropost.find(params[:good_id])
    current_user.ungood(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to :back
  end
  
  private
  
  def micropost_params
    params.require(:micropost).permit(:id, :content)
  end
  
end