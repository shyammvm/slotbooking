class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.references :venue, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
