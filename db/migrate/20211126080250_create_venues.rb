class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.String :title
      t.text :body

      t.timestamps
    end
  end
end
