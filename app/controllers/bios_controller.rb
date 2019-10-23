class BiosController < ApplicationController

  def index
    @bios = Bio.all
  end

  def new
    @bio = Bio.new
  end

  def create
    Bio.create(bio_params)
    redirect_to root_path
  end

  private

  def bio_params
    params.require(:bio).permit(:name, :biography)
  end

end
