class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show update destroy ]

  # GET /articles
  # GET /articles
  def index
    search_string = params[:search].to_s.strip
    
    # 1. Base Query
    base_articles = if search_string.present?
                      Article.where("title ILIKE ? OR content ILIKE ?", "%#{search_string}%", "%#{search_string}%")
                    else
                      Article.all
                    end

    # 2. Setup Pagination Math (3 items per page)
    items_per_page = 6
    current_page = [params[:page].to_i, 1].max # Defaults to 1 if missing or 0
    
    total_count = base_articles.count
    total_pages = (total_count.to_f / items_per_page).ceil
    total_pages = 1 if total_pages == 0 # Safety fallback

    # 3. Slice the database records using LIMIT and OFFSET
    # Page 1 skips 0 items. Page 2 skips 3 items, etc.
    offset_value = (current_page - 1) * items_per_page
    @articles = base_articles.order(created_at: :desc).limit(items_per_page).offset(offset_value)

    # 4. Return the exact structure React expects
    render json: {
      data: @articles,
      meta: {
        current_page: current_page,
        next_page: current_page < total_pages ? current_page + 1 : nil,
        prev_page: current_page > 1 ? current_page - 1 : nil,
        total_pages: total_pages,
        total_count: total_count
      }
    }
  end
  # GET /articles/1
  def show
    render json: @article
  end

  # POST /articles
  def create
    @article = Article.new(article_params)

    if @article.save
      render json: @article, status: :created, location: @article
    else
      render json: @article.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      render json: @article
    else
      render json: @article.errors, status: :unprocessable_content
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy!
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :content, :author)
    end
end