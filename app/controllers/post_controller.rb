class PostController < ApplicationController
   
    def index
        @post = Post.all
    end
    
    def create
        @post = Post.new
        @post.title = params[:post_title]
        @post.content = params[:post_content]
        @post.save
        redirect_to '/post/index'
    end
    
    def show
        @post = Post.find(params[:post_id])
        @comment = @post.comments
        
    end
    
    def edit
  
    end
    
    def update
    
    
    end
    
    
    def delete
        delete_post = Post.find(params[:post_id])
        delete_post.destroy
        redirect_to '/'
    end
end
