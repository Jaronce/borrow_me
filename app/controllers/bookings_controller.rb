class BookingsController < ApplicationController
  # def new
  #   @booking = Booking.new
  #   @product = Product.find(params[:product_id])
  # end

  def create
    @product = Product.find(params[:product_id])
    @booking = Booking.new(booking_params)
    @booking.product = @product
    @booking.user = current_user
    @booking.save
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to users_show_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.delete

    redirect_to user_path(current_user)
  end

  private
  def booking_params
    params.require(:booking).permit(:status, :startdate, :enddate, :product_id, :user_id)
  end
end
