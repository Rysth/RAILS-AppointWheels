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
    if @car.save
      render json: @car
    else
      render json: @car.errors
    end
  end

  # DELETE /cars/:id
  def destroy
    @car = Car.find(params[:id])
    if @car.destroy
      render json: @car
    else
      render json: @car.errors
    end
  end

  private

  def car_params
    params.require(:car).permit(:model, :seats, :description, :price_per_day, :vehicle_type, :image_url)
  end
end
