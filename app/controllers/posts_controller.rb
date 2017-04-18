class PostsController < ApplicationController
    
    def new
        @post = current_user.posts.build
    end
    
    def create 
        @post = current_user.posts.build(post_params)
        @post.user_id = current_user.id
        respond_to do |format|
            if (@post.save)
                format.html {redirect_to "", notice: "Post created!"}
            else
                format.html {redirect_to "", notice: "Error: Post Not Saved."}
            end
        end
    end 
    
    
    private
    
    def post_params #
       params.require(:post).permit(:user_id, :title, :content, :description) 
    end
    
    
end