class PostsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    def index
        @posts = Post.all
    end

    def new 
        @post = current_user.posts.build
    end

    def create
        @post = current_user.posts.build(post_params)
        if @post.save
            redirect_to root_path
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @post.update(post_params)
            redirect_to post_path(@post)
        else
            render :edit
        end
    end

    def destroy
        @post.destroy

        redirect_to posts_path
    end
    
    private

    def post_params
        params.require(:post).permit(:image, :caption)
    end

    def set_post
        @post = Post.find(params[:id])
    end
end
