class Articles::SearchesController < ApplicationController
  def index
    @tasks = current_user.tasks.order("created_at DESC")
    @articles = Article.search(params[:keyword])
    @article = @articles.first
  end
end
