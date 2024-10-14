class ArticlesController < ApplicationController
  
  before_action :set_article, only: [:show, :edit, :destroy]

  def show 
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = User.first
    if @article.save
      flash[:notice]
      redirect_to (@article)
    else
      render 'new'
    end
  end

  def edit
  end

  def update 
    byebug
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description, :user_id))
      flash[:notice]="Article was succesfully updated"
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy 
    @article.destroy
    redirect_to articles_path
  end



  private 

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description, :user_id)
  end
end

