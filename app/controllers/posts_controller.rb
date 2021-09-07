class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      redirect_to root_url, notice: 'Пост успешно создан'
    else
      redirect_to root_url, notice: 'Пост почему-то не создался :('
    end
  end

  def edit
  end

  def destroy
  end

  def show
  end

  def index
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :name, :text, :photos, :files)
  end
end
