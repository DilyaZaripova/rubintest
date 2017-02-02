class WorksController < ApplicationController
  def index
    @themes = Theme.all
  end

  def select_images
    @images = Theme.find(params[:id]).images
    respond_to do |format|
      format.json { render json: @images }
    end
  end

  def show_info
    @image = Image.find(params[:id])
    respond_to do |format|
      format.json { render json: @image }
    end
  end
  def results
    @images = Theme.find(params[:id]).images
  end
end