class PagesController < ApplicationController
  def home
    @ventes = Vente.all
  end
end
