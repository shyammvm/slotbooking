class AddDesignationToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :designation, :string
  end
end
