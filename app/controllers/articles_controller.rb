class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])

    @tasks = Task.all.order("created_at DESC")
    @articles = Article.all.order("created_at DESC")
  end

  def edit
    @article = Article.find(params[:id])
    
    @tasks = Task.all.order("created_at DESC")
    @articles = Article.all.order("created_at DESC")
  end

  def update
    article = Article.find(params[:id])
    article.update(article_params)
    redirect_to root_path
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:content, :title, task_images_attributes: [:image])
  end
end
