class TasksController < ApplicationController

  def index
    @task = Task.new
    
    @tasks = current_user.tasks.order("created_at DESC")
    @articles = current_user.articles.order("created_at DESC")
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

    @tasks = current_user.tasks.order("created_at DESC")
    @articles = current_user.articles.order("created_at DESC")
  end

  def edit
    @task = Task.find(params[:id])
    
    @tasks = current_user.tasks.order("created_at DESC")
    @articles = current_user.articles.order("created_at DESC")
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
    params.require(:task).permit(:content, :title).merge(user_id: current_user.id)
  end
end
