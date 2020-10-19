class PostsController < ApplicationController
  def index
    @posts = Post.order(:id)
  end

  def new
    @post = Post.new
  end

  def create
    post = current_user.posts.create!(post_params)
    redirect_to post
  end

  def show
  end

  def edit
  end

  def update
  end

  def destoroy
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

end
