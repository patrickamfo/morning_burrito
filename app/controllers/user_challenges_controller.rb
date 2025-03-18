class UserChallengesController < ApplicationController
  def new
    @challenge = Challenge.find(params[:challenge_id])
    @user_challenge = UserChallenge.new
  end

  def create
  end
end
