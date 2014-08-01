class PostsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
    redirect_to user_path(@user)
  end
 
  private
    def comment_params
      params.require(:post).permit(:title, :text)
    end
end
