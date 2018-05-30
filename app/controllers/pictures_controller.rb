class PicturesController < ApplicationController
  def detroy
    # @location = Location.find(params[:id])
    @picture = Picture.find(params[:id])
  @picture.destroy
  redirect_back(fallback_location: root_path)
  # redirect_to vente_path(@location)

end
end
