class TweetsController < ApplicationController
  respond_to :json
  def index
  	#client = Twitter::REST::Client.new do |config|
	#  config.consumer_key        = "YWkWeFaQRGRybI0NYNrYiw"
	#  config.consumer_secret     = "1X7sroA9I3rRPzBT69cnnWIhKNeBUf4bGwF8CzTE"
	#  config.access_token        = "15854229-iTEQDEixW4JLltrgr4EB9vYY75RNag4CsjC9er0SC"
	#  config.access_token_secret = "iEyRUAdxp7UFXx7uIAlFRATl39KnSCCp472nTVtxhrI"
	#end
	#tweets = client.search("#thatsongtho", count: 2)

	@tweets = Tweet.all
	#render @tweets
	respond_with @tweets

	#respond_to do |format|
	#	format.html {}
	#	format.json { render @tweets }
	#end

	#render json: { tweets: @tweets }
  end
end
