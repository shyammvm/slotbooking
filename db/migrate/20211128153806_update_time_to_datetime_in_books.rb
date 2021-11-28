class UpdateTimeToDatetimeInBooks < ActiveRecord::Migration[6.1]
  def change
    change_column :books, :start_time, :datetime
    change_column :books, :end_time, :datetime
  end
end
