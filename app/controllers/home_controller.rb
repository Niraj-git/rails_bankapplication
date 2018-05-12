
class HomeController < ApplicationController
  def index
  end  
  def dashboard
  end
  def niraj
  	@name = params[:user_name]
  	@addr = params[:address]
  	@cont = params[:contact]  	
  end  
end
