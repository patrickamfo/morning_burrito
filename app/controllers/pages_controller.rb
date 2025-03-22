class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @challenges = Challenge.all
    @last_2_challenges = UserChallenge.where(user_id: current_user, status: "Completed").last(2)
  end
end
