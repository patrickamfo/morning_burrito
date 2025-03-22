class ChallengeController < ApplicationController
  def index
    @challenges = Challenge.all
  end

  def show
    @chellenge = Challenge.find(params[:id])
  end

  def new
  end

  def edit
  end
end
