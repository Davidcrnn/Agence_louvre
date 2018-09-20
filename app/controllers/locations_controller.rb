class LocationsController < ApplicationController
  def index
    @locations = Location.all
    @locations = Location.order('created_at DESC')
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
    @picture = @location.pictures.build
  end

  def create
    @location = Location.create!(location_params)
    @location = Location.new(location_params)

      respond_to do |format|
    if @location.save
      if params[:pictures]
        params[:pictures].each do |picture|
          @location.pictures.create(picture: picture)
        end
      end

      format.html { redirect_to @location, notice: 'location was successfully created.' }
      format.json { render action: 'show', status: :created, location: @location }
    else
      format.html { render action: 'new' }
      format.json { render json: @location.errors, status: :unprocessable_entity }
    end
  end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
        respond_to do |format|
      if @location.update(location_params)
        if params[:pictures]
          params[:pictures].each do |picture|
            @location.pictures.create(picture: picture)
          end
        end
        format.html { redirect_to @location, notice: 'location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end

  private

  def location_params
    params.require(:location).permit(:titre, :description, :photos, :surface, :top, :visisble, :price, :localisation, pictures_attributes: [:picture, :location_id])
  end
end
