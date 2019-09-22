class TweetsController < ApplicationController
  def index
    #for new tweet form
    @tweet = Tweet.new
    #for tweet table
    @tweets = Tweet.all.order("created_at DESC")
  end

  def create
    @tweet = current_user.tweets.new(tweet_params)
    @tweet.save
    raise
    redirect_to tweets_path
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body)
  end
end
