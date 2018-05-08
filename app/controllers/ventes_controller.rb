class VentesController < ApplicationController

  def index
    @ventes = Vente.all
    @ventes = Vente.order('created_at DESC')

  end

  def show
    @vente = Vente.find(params[:id])
  end

  def new
    @vente = Vente.new
  end

  def create
    @vente = Vente.new(vente_params)
    @vente.save
    redirect_to vente_path(@vente)
  end

  def edit
    @vente = Vente.find(params[:id])
  end

  def update
    @vente = Vente.find(params[:id])
    @vente.update(vente_params)
    redirect_to vente_path(@vente)
  end

  def destroy
    @vente = Vente.find(params[:id])
    @vente.destroy
    redirect_to ventes_path
  end

  private

  def vente_params
    params.require(:vente).permit(:name, :titre, :description, :surface, :price, :localisation, :photo)
  end

end
