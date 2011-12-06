class LocalidadsController < ApplicationController
  def show
    @localidad = Localidad.find(params[:id])

    if params[:search].present?
      @farmacias = @localidad.farmacias.near(params[:search], 50, :order => :distance)
    else
      @farmacias = @localidad.farmacias
    end
    @json = @farmacias.to_gmaps4rails
  end

end
