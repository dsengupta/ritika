class PostsController < ApplicationController
  
  def new
    @user = User.find(params[:user_id])
    @post= @user.posts.new
  end
  def create 
    @user=User.find(params[:user_id])
    @user.posts.create(params[:post])
    redirect_to user_path(@user)
  end

def show
@user=User.find(params[:user_id])
@post=@user.posts.find(params[:id])
end
end
