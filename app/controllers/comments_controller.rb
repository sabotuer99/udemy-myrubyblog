class CommentsController < InheritedResources::Base

  def create
    @comment = Comment.new(params[:comment])
    
    if @comment.save
      flash[:notice] = 'Comment was successfully created.'
    else
      flash[:notice] = "Error creating comment"
    end
      
    redirect_to @comment.post
    
  end




  private

    def comment_params
      params.require(:comment).permit(:name, :email, :body, :post_id)
    end
end

