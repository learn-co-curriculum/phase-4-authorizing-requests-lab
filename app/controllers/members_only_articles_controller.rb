class MembersOnlyArticlesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  before_action :authenticate_user
  before_action :set_article, only: [:show]

  def index
    articles = Article.where(is_member_only: true).includes(:user).order(created_at: :desc)
    render json: articles, each_serializer: ArticleListSerializer
  end

  def show
    render json: @article
  end

  private

  def authenticate_user
    return if user_signed_in?

    render json: { error: 'Unauthorized' }, status: :unauthorized
  end

  def set_article
    @article = Article.find(params[:id])
    return if @article.is_member_only?

    render json: { error: 'Unauthorized' }, status: :unauthorized
  end

  def record_not_found
    render json: { error: 'Article not found' }, status: :not_found
  end
end
