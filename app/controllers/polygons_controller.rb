class PolygonsController < ApplicationController
  def index
    @polygons = Polygon.where(user_id:current_user.id)
  end

  def create
    @polygon = Polygon.create(polygon_params)
    redirect_to categories_url
  end

  private

  def polygon_params
    params.require(:polygon).permit(:user_id, :name).merge(user_id:current_user.id)
  end

end
