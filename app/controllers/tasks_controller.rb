class TasksController < ApplicationController

  def index
    @task = Task.new
    3.times{@task.task_images.build}
    @tasks = Task.all.order("created_at DESC")
    @articles = Article.all.order("created_at DESC")
  end

  def create
    if params[:commit] == "タスクを登録"
      Task.create(task_params)
      redirect_to root_path
    else
      Article.create(task_params)
      redirect_to root_path
    end
  end

  def show
    @task = Task.find(params[:id])

    @tasks = Task.all.order("created_at DESC")
    @articles = Article.all.order("created_at DESC")
  end

  def edit
    @task = Task.find(params[:id])
    
    @tasks = Task.all.order("created_at DESC")
    @articles = Article.all.order("created_at DESC")
  end

  def update
    if params[:commit] == "タスクを登録"
      task = Task.find(params[:id])
      task.update(task_params)
      redirect_to root_path
    else
      Article.create(task_params)
      redirect_to root_path
    end
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to root_path
  end

  private
  def task_params
    params.require(:task).permit(:content, :title, task_images_attributes: [:image])
  end
end
