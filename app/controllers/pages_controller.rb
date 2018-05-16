class PagesController < ApplicationController
  def home
    @ventes = Vente.all
  end

  def mention
  end
end
