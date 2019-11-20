class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @product = Product.find(params[:product_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @product = Product.find(params[:product_id])
    @booking.product = @product
    @booking.user = current_user
    if @booking.save
      flash[:notice] = "Thank you for booking me!"
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to users_show_path


  end

  private
  def booking_params
    params.require(:booking).permit(:status, :startdate, :enddate, :product_id, :user_id)
  end
end
