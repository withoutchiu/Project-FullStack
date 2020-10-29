class PrimaryAttributeController < ApplicationController
  def index
    @primary_attributes = PrimaryAttribute.all
    @agi_count = Hero.where("primary_attribute_id = ?", params[:id]).count
  end

  def show
    @hero_based_on_attribute = Hero.where("primary_attribute_id = ?", params[:id])
  end
end
