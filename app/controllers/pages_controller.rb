#The Pages controller contains all the code for any pages inside of Pages.
class PagesController < ApplicationController
  
  #back-end code for pages/index
  def index
  end

  #back-end code for pages/home
  def home
  end

  #back-end code for pages/explore
  def explore
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
  end
end
