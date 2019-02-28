class EmailsController < ApplicationController
  def index
  	@emails = Email.all
  end

  def show
  	@email = Email.find(params[:id])
  	respond_to do |format|
        format.html
        format.js
    end
  end
end
