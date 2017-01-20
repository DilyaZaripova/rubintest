class WorksController < ApplicationController
  def index
    @themes = Theme.all
  end

  def select_images
    @images = Theme.find(params[:id]).images.pluck(:file)
    respond_to do |format|
      format.json { render json: @images }
    end
  end

  def show_images
    @images.each do |image|
      puts image_path("pictures/")
    end
  end
end