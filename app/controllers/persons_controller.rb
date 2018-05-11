class PersonsController < ApplicationController
	
	def new
	end
	
  def index
    @persons = Person.all
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @person.name = params[:name]
    @person.email = params[:email]
    @person.mobile = params[:mobile]
    @person.address = params[:address]
    @person.save
    redirect_to "/persons/index"
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to "/persons/index"
  end

	def create
    @person = Person.new()
    @person.name = params[:name]
    @person.email = params[:email]
    @person.mobile = params[:mobile]
    @person.address = params[:address]    
    @person.save
    redirect_to "/persons/index"
	end

end