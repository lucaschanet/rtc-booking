class RemoveDayfromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :day
  end
end
