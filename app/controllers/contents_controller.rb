class SessionsController < ApplicationController

  respond_to :json  

  def index
    respond_with Session.all 
  end

  def show
    respond_with Session.find(params[:id])
  end

  def new
    respond_with Session.create(params[:session])
  end

  def edit
    respond_with
  end

  def create
    respond_with
  end

  def update
    respond_with
  end

  def destroy
    respond_with
  end
end
