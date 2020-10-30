class HeroesController < ApplicationController
  HERO_PER_PAGE = 10
  def index
    @page = params.fetch(:page, 0).to_i
    @heroes = Hero.offset(@page * HERO_PER_PAGE).limit(HERO_PER_PAGE)

  end
  #The @heroes variable will be share with:
  #app/voews/heroes/index.html.erb

  def show
    @hero =Hero.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @heroes_searched = Hero.where("localized_name LIKE ?", wildcard_search)
  end
end
