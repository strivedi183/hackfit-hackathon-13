class ContentsController < ApplicationController

  def show
    @content = Condent.find(params[:id])
  end

end
