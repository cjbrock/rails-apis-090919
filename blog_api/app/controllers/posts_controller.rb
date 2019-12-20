class PostsController < ApplicationController
before_action :find_post, only: [:show, :update, :destroy]

def index
    @posts = Post.all
    render json: @posts
end

def show
    render json: @post
end

def create
    @post = Post.new(post_params)
    if @post.save
        render json: @post
    else
        render json: {errors: @post.error.full_messages}
    end

end

def update
    if @post.update(post_params)
        render json: @post
    else
        render json: {errors: @post.error.full_messages}
    end
end

def destroy
    @post.destroy
    render json: @post
end

private
    def post_params
        params.require(:post).permit(:title, :author, :content, :likes)
    end

    def find_post
        @post = Post.find_by_id(params[:id])
    end

end
