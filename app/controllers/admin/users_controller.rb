class Admin::UsersController < ApplicationController

  load_and_authorize_resource
  before_action :set_player, except: %i[index]

  def index
    @players = User.includes(:games).order(:created_at)
  end

  def show; end

  def edit; end

  def update
    if @player.update(player_params)
      redirect_to admin_user_path(@player), notice: t('notifications.user.updated')
    else
      render :edit
    end
  end

  def destroy
    @player.destroy

    redirect_to admin_users_path, notice: t('notifications.user.deleted')
  end

  private

    def set_player
      @player = User.find(params[:id])
    end

    def player_params
      params.require(:user).permit(:full_name, :email, :password, :password_confirmation, :role)
    end

end

