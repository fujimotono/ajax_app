class PostsController < ApplicationController
  def index   # indexのアクションを定義した 
    @posts = Post.all.order(id: "DESC")
  end  

  def create
    Post .create(content: params[content])
    redirect_to action: :index
  end
end
