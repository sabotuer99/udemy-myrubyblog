class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :site_search
  
  helper_method :all_categories
  def all_categories
    @categories = Category.all
  end
  
  helper_method :all_posts
  def all_posts
    @posst = Post.all
  end
  
  def site_search
    params.permit(:q)
    @search = Post.ransack(params[:q])
    @search_posts = @search.result.sort {|first, second| first.created_at <=> second.created_at}
  end
  
end
