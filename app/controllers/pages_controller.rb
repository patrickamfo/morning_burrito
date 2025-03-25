class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  before_action :daily_random_challenge, except: [:home]

  def home
  end

  def dashboard
    @challenges = Challenge.all
    @last_2_challenges = UserChallenge.where(user_id: current_user, status: "Completed").last(2)
  end

  def daily_challenge
    @daily_challenge = daily_random_challenge
  end

  private

  def daily_random_challenge
    @user_challenges = Challenge.where(length: current_user.length_preference, category: current_user.category_preference)

    Rails.cache.fetch("daily_challenge_user_#{current_user.id}", expires_at: Time.current.end_of_day) do
      @user_challenges.where.not(id: UserChallenge.where(user_id: current_user, status: "Completed")).sample
    end
  end

end
