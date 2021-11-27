# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :name, null: false
      t.string :designation, null: false
      t.string :role, null: false, default: 'user'
      t.string :password_digest, null: false
      t.string :phone

      t.timestamps
    end
  end
end
