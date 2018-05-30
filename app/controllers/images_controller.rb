class ImagesController < ApplicationController
  def destroy
     # @vente = Vente.find(params[:id])
     @image = Image.find(params[:id])
  @image.destroy

  redirect_back(fallback_location: root_path)

  end
end
