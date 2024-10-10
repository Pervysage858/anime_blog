class ArticlesController < ApplcationController
	def show 
		@article = Article.find(params[:id])
	end
end