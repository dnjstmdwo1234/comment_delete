class CommentController < ApplicationController
    def create
        @comment = Comment.new
        @comment.content = params[:comment_content]
        @comment.post_id = params[:post_id]
        @comment.save
        
        redirect_to '/'
    end
    
    def destroy
        delete_comment = Comment.find(params[:comment_content])
        delete_comment.destroy
        redirect_to "/"
    end
end
