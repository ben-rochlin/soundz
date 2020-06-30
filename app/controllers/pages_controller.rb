class PagesController < ApplicationController

  def index
  end

  def login
  end 
  
  def register
  end  

  def generator
  end
  
  def user
  end  

  def new_user 
  redirect_to user_path
  end  

end