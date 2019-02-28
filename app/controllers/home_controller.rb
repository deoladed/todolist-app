class HomeController < ApplicationController
  def index
    @tasks = Task.all
    @categories = Category.all
    @categorie = Category.new
  end
end
