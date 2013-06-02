class PadsController < ApplicationController
  # GET /pads
  # GET /pads.json
  def index
    @pads = Pad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pads }
    end
  end

  # GET /pads/1
  # GET /pads/1.json
  def show
    @pad = Pad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pad }
    end
  end
end
