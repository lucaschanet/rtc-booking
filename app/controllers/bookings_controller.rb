class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new

    @booking = Booking.new

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

    private

    def booking_params
      params.require(:booking).permit(:user_id, :date, :start_time, :end_time)
    end
end

