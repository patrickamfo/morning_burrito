class ChallengesController < ApplicationController

  def time_preferences
    @user = User.new
  end

  def category_preferences
    @user = User.new
  end
end
