class HomeController < ApplicationController
	before_action :authenticate_user!	
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
