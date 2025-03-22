class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @challenges = Challenge.all
    @daily_options = @challenges.where.not(id: UserChallenge.where(user_id: current_user, status: "Completed")).sample(3)
    @completed_challenges = UserChallenge.where(user_id: current_user, status: "Completed")
  end

  def learning_journey
    @challenges = Challenge.all
    @daily_options = @challenges.where.not(id: UserChallenge.where(user_id: current_user, status: "Completed")).sample(3)
    @completed_challenges = UserChallenge.where(user_id: current_user, status: "Completed")
  end
end
