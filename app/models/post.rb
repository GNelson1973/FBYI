class Post < ActiveRecord::Base
  belongs_to :user

def create
  # ...
  @post = Post.new( content: post_params[:content] )
  @post.user = current_user
  # ...
end

end
