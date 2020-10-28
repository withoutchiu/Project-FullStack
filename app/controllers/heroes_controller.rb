class HeroesController < ApplicationController
  def index
    @heros = Hero.all
  end
  #The @heroes variable will be share with:
  #app/voews/heroes/index.html.erb

  def show
  end
end
