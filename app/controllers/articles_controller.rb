class ArticlesController < ApplicationController
    def all_articles
        @articles = Article.all;
    end

    def show
        @article = Article.find(params[:id])
    end
end