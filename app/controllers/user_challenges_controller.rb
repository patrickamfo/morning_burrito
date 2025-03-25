class UserChallengesController < ApplicationController

  def index
    @completed_challenges = UserChallenge.where(user_id: current_user, status: "Completed")
    @challenges = Challenge.all
  end

  def show
    @user_challenge = UserChallenge.find(params[:id])
    @challenge = @user_challenge.challenge
  end

  def create
    @user_challenge = UserChallenge.new(challenge_id: params[:challenge_id], user_id: current_user.id, status: "In Progress")
    @challenge = Challenge.find(params[:challenge_id])
    if @user_challenge.save
      redirect_to user_challenge_path(@user_challenge)
    else
      redirect_to challenge_path(@challenge), status: :unprocessable_entity
    end
  end

  private

  def user_challenge_params
    params.require(:user_challenge).permit(:user_id, :challenge_id, :status, :challenge_text)
  end
end
