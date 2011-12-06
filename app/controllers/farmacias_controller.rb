class FarmaciasController < ApplicationController
  def show
    @farmacia = Farmacia.find(params[:id])
    @json = @farmacia.to_gmaps4rails
  end
end
