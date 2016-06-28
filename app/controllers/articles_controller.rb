class ArticlesController < ApplicationController
  def new
    # Instantiate a new instance of Article
    @article = Article.new
  end

  def create
    # render plain: params[:article].inspect

    # Create a new instance variable from what is being passed through from the params hash
    @article = Article.new(article_params)

    # to save the newly created article
    @article.save
    redirect_to articles_show(@article)
  end

  private
    # whitelisting params
    # param validations
    def article_params
      # from the params hash we are going to allow these and then construct a new article instance variable and then save it through our database
      params.require(:article).permit(:title, :description)
    end

end
