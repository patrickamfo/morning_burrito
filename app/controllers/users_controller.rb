class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def category_preference
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update!(user_params)
    if user.save!
      redirect_to daily_challenge_path, notice: "Your preferences have been updated"
    else
      render preferences_path, status: :unprocessable_entity, notice: "Failed to save your preferences"
    end
  end

  private

  def user_params
    params.require(:user).permit(:length_preference, :category_preference)
  end
end
