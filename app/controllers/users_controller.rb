class UsersController < ApplicationController
  def show
    user = current_user
    @my_products = user.products

    @my_bookings = Booking.joins(:product).where(products: { user: user })

    @pending_bookings = @my_bookings.select { |b| b.status == "Pending" }
    @confirmed_bookings = @my_bookings.select { |b| b.status == "Confirmed" }
  end
end
