class StaticPagesController < ApplicationController
  def home
  	@tweets = get_tweets("#backbone.js")
  end
end
