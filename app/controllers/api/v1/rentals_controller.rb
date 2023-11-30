class Api::V1::RentalsController < ApplicationController
  before_action :set_user, only: %i[index create destroy]

  def index
    @rentals = @user.rentals
    render json: @rentals
  end

  def create
    @rental = @user.rentals.build(rental_params)
      if @rental.save
        render json: @rental
      else
        render json: @rental.errors
      end
  end

  def destroy
    @rental = @user.rentals.find(params[:id])
      if @rental.destroy
        render json: @rental
      else
        render json: @rental.errors
      end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def rental_params
    params.require(:rental).permit(:total_price, :start_date, :end_date, :car_id, :user_id)
  end
end
