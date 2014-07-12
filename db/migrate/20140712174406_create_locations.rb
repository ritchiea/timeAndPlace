class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.string :description
    end
    create_table :shares do |t|
      t.integer :receiver_id
      t.integer :sender_id
      t.integer :location_id
    end
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :password_digest
    end
  end
end
