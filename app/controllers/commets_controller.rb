class CommetsController < ApplicationController
  before_action :set_post
  def create
    @post.commets.create! params.required(:commet).permit(:content)
    redirect_to @post
    
  end
  private
  def set_post
    @post = Post.find(params[:post_id])
    
  end
  
  
end
