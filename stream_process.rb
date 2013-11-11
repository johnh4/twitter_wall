=begin
require 'tweetstream'

ENV["RAILS_ENV"] ||= "production"

#root = File.expand_path(File.join(File.dirname(__FILE__), '..'))
root = File.expand_path(File.dirname(__FILE__))
require File.join(root, "config", "environment")

daemon = TweetStream::Daemon.new('tracker', :log_output => true)
daemon.on_inited do
  ActiveRecord::Base.connection.reconnect!
  ActiveRecord::Base.logger = Logger.new(File.open('log/stream.log', 'w+'))
end
daemon.track('term1') do |tweet|
  Status.create_from_tweet(tweet)
  puts tweet.text
end
=end
#!/usr/bin/env ruby
# encoding: utf-8

=begin
ENV["RAILS_ENV"] ||= "development"

#root  = File.expand_path(File.join(File.dirname(__FILE__), '..'))
root = File.expand_path(File.dirname(__FILE__))
require File.join(root, "config", "environment")

require 'tweetstream'

p "Initializing daemon..."

TweetStream.configure do |config|
  config.consumer_key       = 'YWkWeFaQRGRybI0NYNrYiw'
  config.consumer_secret    = '1X7sroA9I3rRPzBT69cnnWIhKNeBUf4bGwF8CzTE'
  config.oauth_token        = '15854229-iTEQDEixW4JLltrgr4EB9vYY75RNag4CsjC9er0SC'
  config.oauth_token_secret = 'iEyRUAdxp7UFXx7uIAlFRATl39KnSCCp472nTVtxhrI'
  config.auth_method        = :oauth
end

TweetStream::Client.new.track('BlizzCon') do |status|
  puts "#{status.text}"
end
terms = ['ladygaga']

daemon = TweetStream::Daemon.new('tracker',
  :log_output => true,
  :backtrace  => true,
)

daemon.on_inited do
  ActiveRecord::Base.connection.reconnect!
  p "Listening..."
end

daemon.on_error do |message|
  puts "on_error: #{message}"
end

daemon.on_reconnect do |timeout, retries|
  puts "on_reconnect: #{timeout}, #{retries}"
end

daemon.on_limit do |discarded_count|
  puts "on_limit: #{skip_count}"
end

daemon.track(terms) do |status|
	#puts "#{status.text}"
  # put here your model.create code!
  #Tweet.create!( :uid => status.id)
end
=end