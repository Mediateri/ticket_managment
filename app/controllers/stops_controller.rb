class StopsController < ApplicationController
  before_action :set_stop, only: [:show, :update, :destroy]
  before_action :authorize_request

  # GET /stops
  def index
    @stops = Stop.all

    render json: @stops
  end

  # GET /stops/1
  def show
    render json: @stop
  end

  # POST /stops
  def create
    @stop = @route.stops.build(stop_params)

    if @stop.save
      render json: @stop, status: :created, location: @stop
    else
      render json: @stop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stops/1
  def update
    if @stop.update(stop_params)
      render json: @stop
    else
      render json: @stop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stops/1
  def destroy
    @stop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stop
      @stop = Stop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stop_params
      params.require(:stop).permit(:name, :from_point, :cost, :route_id)
    end
end
