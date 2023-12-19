class Admin::UsersController < ApplicationController

  load_and_authorize_resource
  before_action :set_player, except: %i[index]

  def index
    @players = User.includes(:games).order(:created_at)
  end

  def show; end

  def edit; end

  def update; end

  def destroy
    @player.destroy
  end

  private

    def set_player
      @player = User.find(params[:id])
    end

end

