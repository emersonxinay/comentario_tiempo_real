class CommetsController < ApplicationController
  before_action :set_post
  def create
    comment = @post.commets.create! params.required(:commet).permit(:content)
    CommentsMailer.submitted(comment).deliver_later
    redirect_to @post
    
  end
  private
  def set_post
    @post = Post.find(params[:post_id])
    
  end
  
  
end
