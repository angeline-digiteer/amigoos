class FeedController < ApplicationController
  def index
    # Featured posts from DB
    # TODO: only show posts that are active and published
    @featured_posts = Post.featured.recent.limit(5)

    # All posts with pagination from DB
    # TODO: only show posts that are active and published
    @posts = Post.recent.page(params[:page]).per(10)
  end
end