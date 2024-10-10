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
  	@article=Article.new(article_params)
  	if @article.save
  		redirect_to (@article)

  	else
  		render 'new'

  	end
  	
  end

  def edit
  end

  def update 
  	@article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
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
  	params.require(:article).permit(:title, :description)
  end
end
