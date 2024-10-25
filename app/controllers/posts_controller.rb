class PostsController < ApplicationController
  def index
    @posts = Post.all  # Assuming you have a Post model
  end

  def show
    @post = Post.find(params[:id])  # Show a single post
  end

  def new
    @post = Post.new  # Form for creating a new post
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])  # Edit a specific post
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)  # Adjust attributes as necessary
  end
end
