class RoleController < ApplicationController
  def index
    @roles = Role.all
  end

  def show
    @hero_based_on_role = Hero.joins(:hero_roles).
                              where('hero_roles.role_id': params[:id])
  end
end
