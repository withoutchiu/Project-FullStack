class HeroesController < ApplicationController
  def index
    @hero = Hero.all
    @hero_roles = HeroRole.all
    @roles = RoleSecond.all
  end
  #The @heroes variable will be share with:
  #app/voews/heroes/index.html.erb

  def show
  end
end
