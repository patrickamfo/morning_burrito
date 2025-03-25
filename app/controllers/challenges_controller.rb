class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
    @user_challenge = UserChallenge.new
  end

  def preferences
  end
end
