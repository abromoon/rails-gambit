class HomeController < ApplicationController
  def index
    @answer = ['А их нет', 'Скоро будут'].sample
  end

  def about

  end
end
