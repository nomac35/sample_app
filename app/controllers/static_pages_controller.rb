class StaticPagesController < ApplicationController
  def home
  	@title = "Home"
  	if logged_in?
  	 @micropost = current_user.microposts.build if logged_in?
  	  @feed_items = current_user.feed.paginate(page: params[:page])
  	
  end
  end

  def help
  	@title = "help"
  end

  def about
  	@title = "about"
  end

  def contact
  	@title = 'contact'
  end
  
end
