class StaticPagesController < ApplicationController
  
  def index
  	if user_signed_in?
  		redirect_to restaurant_show_url
  	else
  		redirect_to new_user_session_path
  	end
  end

  def home

  end

  def help
  end

  def about
  end

end
