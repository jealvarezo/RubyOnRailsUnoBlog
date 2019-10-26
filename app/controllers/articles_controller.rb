class ArticlesController < ApplicationController
    before_action :find_article, except: [:new, :create, :index] #only: [:show, :edit, :update, :destroy]
    # after_action # se ejecuta despues, el contrario de before_action

    def index
        @article = Article.all
    end

    def show
        #@article = Article.find( params[:id] )
    end

    def edit
        #@article = Article.find( params[:id] )
    end

    def destroy
        #@article = Article.find( params[:id] )
        @article.destroy
        redirect_to root_path
    end

    def update
        #@article = Article.find( params[:id] )
        @article.update( title: params[:article][:title] )
        redirect_to @article
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.create( title: params[:article][:title] )
        render json: @article
    end

    private
    def find_article
        @article = Article.find( params[:id] )
    end
end