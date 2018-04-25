class VentesController < ApplicationController

  def index
    @ventes = Vente.all
  end

  def show
    @vente = Vente.find(params[:id])
  end

  def new
    @vente = Vente.new(vente_params)
  end

  def create
    @vente = Vente.new
    @vente.save
  end

  def edit
    @vente = Vente.find(params[:id])
  end

  def update
    @vente = Vente.find(params[:id])
    @vente.update(vente_params)
  end

  def destroy
    @vente = Vente.find(params[:id])
    @vente.destroy
  end

  private

  def vente_params
    params.require(:vente).permit(:name, :titre, :description, :surface)
  end

end
