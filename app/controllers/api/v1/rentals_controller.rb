class Api::V1::RentalsController < ApplicationController
  def index
    @rentals = Rental.all
    render json: @rentals
  end

  def create
    @rental = Rental.create(rental_params)
    render json: @rental
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    render json: @rental
  end

  private

  def rental_params
    params.require(:rental).permit(:total_price, :start_date, :end_date, :car_id, :user_id)
  end
end
