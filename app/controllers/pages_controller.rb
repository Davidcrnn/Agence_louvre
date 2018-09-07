class PagesController < ApplicationController
  def home
    @ventes = Vente.all
    @locations = Location.all
  end

  def mention
    @ventes =Vente.all
  end
end
