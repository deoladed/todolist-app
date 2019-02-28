class EmailsController < ApplicationController
  def index
  	@emails = Email.all.by_date
  end

  def show
    puts 'SHowwwwwwwwww'
    @email = Email.find(params[:id])
    @email.update(readed: true)

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

  end

  def update
    @email = Email.find(params[:id])
    @email.update(readed: true)

  end

end
