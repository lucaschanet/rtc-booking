class AddDatetoBookings < ActiveRecord::Migration[6.0]
    add_column :bookings, :date, :date
  def change
  end
end
