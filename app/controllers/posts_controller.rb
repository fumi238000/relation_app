class PostsController < ApplicationController
  before_action :set_post, only: %i[edit update destroy]

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
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    # post = Post.find(params[:id])
     @post.destroy!
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

  # 他人の投稿を削除できないようする工夫
  # メッセージ投稿者とログインユーザーが一致しているか
   def set_post
     @post = current_user.posts.find(params[:id])
     redirect_to root_path, alert: "権限がありません"
   end

  

end
