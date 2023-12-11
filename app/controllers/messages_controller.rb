class MessagesController < ApplicationController

  before_action :set_game, only: %i[new create]
  before_action :authenticate_user!

  def new
    @message = @game.messages.new
  end

  def create
    @message = @game.messages.new(message_params)
    @message.author = current_user
    @message.save!
    respond_to do |format|
      format.html { redirect_to @game }
    end
  end

  private

    def set_game
      @game = Game.find(params[:game_id])
    end

    def message_params
      params.require(:message).permit(:content)
    end

end

