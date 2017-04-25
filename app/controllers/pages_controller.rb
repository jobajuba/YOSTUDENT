#The Pages controller contains all the code for any pages inside of Pages.
class PagesController < ApplicationController
  
  #back-end code for pages/index
  def index
  end

  #back-end code for pages/home
  def home
    @posts = Post.all
    @newPost = Post.new
  end

  #back-end code for pages/explore
  def explore
    @posts = Post.all
  end

  #back-end code for pages/profile
  def profile
    #grab the username for the URL as :id
    if(User.find_by_username(params[:id]))
      @username = params[:id]
    else
      #redirect to 484 (root for now)
      redirect_to root_path, :notice=> "Oops: User doesn't exist"
    end
    
    @posts = Post.all.where("user_id =?", User.find_by_username(params[:id]).id)
    @newPost = Post.new
  end
  
   #back-end code for pages/activity
  def activity
  end
  
   #back-end code for pages/workspace
  def grav
  end
  
   #back-end code for pages/notifications
  def noti
  end
  
  def sticky
  end
  
end
