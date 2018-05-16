class PagesController < ApplicationController
  def home
    @ventes = Vente.all
  end

  def mention
    @ventes =Vente.all
  end
end
