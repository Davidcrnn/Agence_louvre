class ImagesController < ApplicationController
  def destroy
     @image = Image.find(params[:id])
     @vente = Vente.find(params[:id])
  @image.destroy
  redirect_to ventes_path
  # respond_to do |format|
  #   format.html { redirect_to vente_path(@vente), notice: 'Image has been deleted' }
  #   format.json { head :no_content }
  #   format.js   { render layout: false}
  # end
  end
end
