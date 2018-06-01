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
    @image = @vente.images.build
  end

  def create
    @vente = Vente.create!(vente_params)
     # @vente = Vente.new(vente_params)

  respond_to do |format|
    if @vente.save
      if params[:images]
        params[:images].each do |image|
          @vente.images.create(image: image)
        end
      end

      format.html { redirect_to @vente, notice: 'vente was successfully created.' }
      format.json { render action: 'show', status: :created, location: @vente }
    else
      format.html { render action: 'new' }
      format.json { render json: @vente.errors, status: :unprocessable_entity }
    end
  end
  end

  def edit
    @vente = Vente.find(params[:id])
  end

  def update
    @vente = Vente.find(params[:id])
    respond_to do |format|
      if @vente.update(vente_params)
        if params[:images]
          params[:images].each do |image|
            @vente.images.create(image: image)
          end
        end
        format.html { redirect_to @vente, notice: 'vente was successfully updated.' }
        format.json { render :show, status: :ok, location: @vente }
      else
        format.html { render :edit }
        format.json { render json: @vente.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @vente = Vente.find(params[:id])
    @vente.destroy
    redirect_to ventes_path
  end

  private

  def vente_params
    params.require(:vente).permit(:titre, :description, :photo, :surface, :top, :price, :localisation, images_attributes: [:image, :vente_id])
  end




end
