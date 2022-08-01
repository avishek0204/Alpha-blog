class ArticlesController < ApplicationController
    def all_articles
        @articles = Article.all;
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new();
    end

    def create
        # Rails.logger.info "Params#{params}"
        @article = Article.new(params.require(:article).permit(:title, :description));
        # Rails.logger.info "#{@article.id}"
        if (@article.save)
            flash[:notice] = "Article created!"
            redirect_to "/articles/#{@article.id}"
        else 
            flash[:alert] = "Something went wrong."
            render "articles/new"
        end

        # redirect_to '/articles'
        # render template: "articles/all_articles"
    end
end