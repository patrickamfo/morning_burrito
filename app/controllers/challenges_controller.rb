class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
  end

  def preferences
  end
end
