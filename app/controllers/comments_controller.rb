class CommentsController < ApplicationController

  def show
    @post = Post.find_by id: params[:id]
    @comments = @post.comments 
    @authors = posts_authors
    @comment = Comment.new
  end

  def index

  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @post = Post.find_by id: params[:id]
    @comment.post_id = comment_params[:post_id]

    if @comment.text != ""
      @comment.save!
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:post_id, :user_id, :text, {photos: []}, :files)
  end

  def posts_authors
    User.all
  end
end
