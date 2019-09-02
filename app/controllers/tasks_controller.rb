class TasksController < ApplicationController
  before_action :find, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all

  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(user_permit)
    redirect_to home_path
  end

  def edit
  end

  def update

    @task.update(user_permit)
    redirect_to home_path
  end

  def destroy
    @task.destroy
    redirect_to home_path
  end

  private

  def find
    @task = Task.find(params[:id])
  end

  def user_permit
    params.require(:task).permit(:completed, :title, :details)
  end

end
