class Api::V1::CarsController < ApplicationController
  # GET /cars
  def index
    @cars = Car.all.order(created_at: :desc)
    render json: @cars
  end

  # GET /cars/:id
  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # POST /users/new
  def create
    @car = Car.new(car_params)
    respond_to do |format|
      if @car.save
        format.json { render @car, status: :created }
      else
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/:id
  def destroy
    @car = Car.find(params[:id])
    if @car.destroy
      format.json { render status: :destroyed }
    else
      format.json { render json: @car.errors, status: :unprocessable_entity }
    end
  end

  private

  def car_params
    params.require(:car).permit(:model, :seats, :description, :price_per_day, :vehicle_type)
  end
end
