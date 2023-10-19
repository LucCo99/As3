class ArticlesController < ApplicationController
  def new
    @articles = Article.new
  end

  def news
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def article_params
    params.require(:article).permit(:title, :body, :category)
  end

  def index
    if params[:search].present?
      @articles = Article.where("title LIKE ? OR body LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @articles = Article.all
    end
  end

  def show
    @article = Article.find(params[:id])
  end



  def admin
    @articles = Article.all
  end

  def home
    @articles = Article.order(created_at: :desc).limit(4)
  end

end
