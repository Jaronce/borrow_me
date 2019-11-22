class UsersController < ApplicationController
  def show
    user = current_user
#My Product -------------------
    @my_products = user.products
#MY Product Bookings---------------
    @my_bookings = Booking.joins(:product).where(products: { user: user })
    @pending_bookings = @my_bookings.select { |b| b.status == "Pending" }
    @confirmed_bookings = @my_bookings.select { |b| b.status == "Confirmed" }
#MY Bookings Ive made------------------
    @bookings_ive_made = current_user.bookings
  end
end
