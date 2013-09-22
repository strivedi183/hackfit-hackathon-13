class SessionsController < ApplicationController

  respond_to :json  

  def index
    respond_with Session.all 
  end

  def show
    respond_with Session.find(params[:id])
  end
  
  def create
    respond_with Session.create(params[:session])
  end

  def update
    respond_with Session.update(params[:id], params[:session])
  end

  def destroy
    respond_with Session.destroy(params[:id])
  end
end
