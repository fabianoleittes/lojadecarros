class CarrosController < ApplicationController
  def index
    @carro = Carro.new
    @carros = Carro.order('created_at DESC').paginate :page => params[:page], :per_page => 3
  end

  def create
    @carro = Carro.new(params[:carro])
    @carro.save
    redirect_to :action => "index"
  end
end
