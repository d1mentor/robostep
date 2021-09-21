class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    #@post.photos = params[:photos]
    @post.save!
    redirect_to root_path
  end

  def edit
  end

  def destroy
  end

  def show
    @post = Post.find_by id: params[:id] 
    @authors = posts_authors
  end

  def index
    @posts = get_all_posts
    @authors = posts_authors
  end

  private

  def get_all_posts
    posts = Post.all.order('created_at desc')
  end

  def posts_authors
    User.all
  end

  def post_params
    params.require(:post).permit(:user_id, :name, :text, {photos: []}, :files)
  end
end
