class UserChallengesController < ApplicationController

  def index
    @completed_challenges = UserChallenge.where(user_id: current_user, status: "Completed")
    @challenges = Challenge.all
  end

  def completed
    @completed_challenge = UserChallenge.find(params[:id])
  end

  def create
    @user_challenge = UserChallenge.new(challenge_id: params[:challenge_id], user_id: current_user.id, status: "In Progress")
    @challenge = Challenge.find(params[:challenge_id])
    if @user_challenge.save
      redirect_to edit_user_challenge_path(@user_challenge)
    else
      redirect_to daily_challenge_path, status: :unprocessable_entity
    end
  end

  def edit
    @user_challenge = UserChallenge.find(params[:id])
    @challenge = @user_challenge.challenge
  end

  def update
    @user_challenge = UserChallenge.find(params[:id])
    if params[:user_challenge]
      @user_challenge.update(status: "Completed", completion_date: Time.now)
      redirect_to "/user_challenges/#{@user_challenge.id}/confirmation"
    else
      @challenge = @user_challenge.challenge
      render :edit, status: :unprocessable_entity
    end
  end

  def confirmation
  end

  private

  def user_challenge_params
    params.require(:user_challenge).permit(:id, :user_id, :challenge_id, :status, :challenge_text, :photo)
  end
end
