class ArticlesController < ApplicationController
    def index
        Rails.logger.info "Action::all_article"
        @articles = Article.all
    end

    def show
        Rails.logger.info "Action::show"
        @article = Article.find(params[:id])
    end

    def new
        Rails.logger.info "Action::new"
        @article = Article.new()
    end

    def edit
        Rails.logger.info "Action::edit"
        @article = Article.find(params[:id])
        
    end

    def create
        Rails.logger.info "Action::create"
        @article = Article.new(params.require(:article).permit(:title, :description));
        if (@article.save)
            flash[:notice] = "Article created!"
            redirect_to "/articles/#{@article.id}"
        else 
            flash[:alert] = "Something went wrong."
            render "articles/new"
        end

    end

    def update

        Rails.logger.info "Action::update"
        @article = Article.find(params[:id])
        if @article.update(params.require(:article).permit(:title, :description))
            flash[:notice] = "Updated sucessfully";
            redirect_to "/articles/#{@article.id}"
        else
            flash[:alert] = "Something went wrong"
            redirect_to "/articles/#{@article.id}/edit"
        end

    end

    def destroy
        @article = Article.find(params[:id]) 
    end
end