class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    
  end

  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_back(fallback_location: root_path)  #コメント送信後は、一つ前のページへリダイレクトさせる。
    else
      redirect_back(fallback_location: root_path)  #同上
    end
  end

  def destroy

  end


  private

  def comment_params
    params.require(:comment).permit(:body,:recipe_id)
  end
end