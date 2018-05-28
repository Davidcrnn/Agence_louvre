class ImagesController < ApplicationController
  def destroy
     # @vente = Vente.find(params[:id])
     @image = Image.find(params[:id])
  @image.destroy
  redirect_back(fallback_location: root_path)
  # redirect_to ventes_path
  # respond_to do |format|
  #   format.html { redirect_to :back, notice: 'Image has been deleted' }
  #   format.json { head :no_content }
  #   format.js   { render layout: false}
  # end
  end
end
