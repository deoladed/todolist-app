class TasksController < ApplicationController
before_action :authenticate_user!
  def new
    @categories = Category.all
  end

  def create
    @task = Task.new(task_params)
    @category = Category.find(category_params)
    @task.category = @category
    if @task.save
      respond_to do |format|
        format.html do
          redirect_to root_path
          flash[:notice] = "Task created"
        end
        format.js
      end
    else
      redirect_to root_path
      flash[:notice] = "Please try again"
    end
  end

  def edit
    @task = Task.find(params[:id])
    @categories = Category.all

  end

  def update
    puts 'OUaiiiiiiiiiiiiiiiiiouaisouaiss'
    @task = Task.find(params['id'])
    @task.update(status: true)
  end

  def index
    @tasks = Task.all
  end

  def destroy
    puts 'destroyyyyyyyy'
    @task = Task.find(params[:id])
    @task.destroy
  end


  private

  def task_params
    params.permit(:title, :deadline, :description)
  end

  def category_params
    params.require(:Category)
  end

end
