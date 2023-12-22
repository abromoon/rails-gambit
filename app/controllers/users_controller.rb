class UsersController < ApplicationController

  def profile
    @user = current_user

    @games = Game.where(white_player_id: @user.id).or(Game.where(black_player_id: @user.id))
  end

  def index
    @users = User.where.not(id: current_user)
  end

end

