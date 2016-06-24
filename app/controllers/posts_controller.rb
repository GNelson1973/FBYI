class PostsController < ApplicationController
  load_and_authorize_resource

  def index
    @posts = @posts.order( created_at: :desc )
  end

def create
     post_params = params.require( :post ).permit( :content )

     @post = Post.new( content: post_params[:content] )

     if @post.save
        redirect_to posts_path
     else
        render posts_path
     end
  end

def user
  def user
     @user = User.find( params[:user_id] )

     @posts = Post.where( user: @user ).order( created_at: :desc )

     @likes = @user.likes.joins( :post ).order( "posts.created_at DESC" )
  end
end

private
  def post_params
    params.require( :post ).permit( :content )
  end

end
