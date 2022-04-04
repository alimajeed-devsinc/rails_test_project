class PostsController < ApplicationController
  def index
    redirect_to  posts_show_all_path
  end
  def viewpage
  end
  def new
    @post = Post.new()
  end

  def create
    @post = Post.new(post_params)

    @post.save
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end

  def show_all
    @allposts = Post.all
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_show_all_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end

  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end


end
