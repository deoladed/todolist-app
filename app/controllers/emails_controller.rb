class EmailsController < ApplicationController
  def index
  	@emails = Email.all.by_date
  end

  def show
    puts 'SHowwwwwwwwww'
    @email = Email.find(params[:id])
    @email.update(readed: true)
    flash[:alert] = 'Email readed'
    respond_to do |format|
        format.html
        format.js
    end

  end

  def destroy
    puts 'destroYYYYYY'
    @email = Email.find(params[:id])
    puts @email
    @email.destroy
    flash[:alert] = 'Email deleted'
  end

  def update
    @email = Email.find(params[:id])
    @email.update(readed: true)
    flash[:alert] = 'Email readed'
  end

end
