class PostsController < ApplicationController
  def index
    @posts = Post.order(:id)
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destoroy
  end
end
