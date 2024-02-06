class PostsController < ApplicationController
  def create
    user = User.find(params[:id])
    if user.active
      post = Post.new(content: params[:post], user[:id])
      render json: post
    else
      render json: 'not an active user'
    end
  end

  def all
    posts = Post.all.select {|el| el.active == true}
    render json: posts
  end
 
  def find
    user = User.find(params[:id])
    if user
      render user.posts
    else
      render json: 'user is not active'
    end
  end

end
