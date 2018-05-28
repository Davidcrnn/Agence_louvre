class PicturesController < ApplicationController
  def detroy
    @picture = Picture.find(params[:id])
  @picture.destroy
  redirect_back(fallback_location: root_path)
  end
end
