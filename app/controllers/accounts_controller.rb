class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def new
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
    @account.holder_name = params[:holder_name]
    @account.mobile = params[:mobile]
    @account.address = params[:address]
    @account.save
    redirect_to "/accounts/index"
  end

  def create
    @account = Account.new()
    @account.holder_name = params[:holder_name]
    @account.mobile = params[:mobile]
    @account.address = params[:address]
    @account.balance = 0
    @account.save
    redirect_to "/accounts/index"
  end

end