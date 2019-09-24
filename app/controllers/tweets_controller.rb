class TweetsController < ApplicationController
  def index
    #for new tweet form
    @tweet = Tweet.new
    #for tweet table
    @tweets = Tweet.all.order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = current_user.tweets.new(tweet_params)
    @tweet.save!
    redirect_to tweets_path
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweets_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end
end
