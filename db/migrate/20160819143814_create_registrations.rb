class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.string :club
      t.boolean :acro
      t.integer :food
      t.boolean :presence_day
      t.boolean :presence_evening
      t.boolean :presence_night

      t.timestamps
    end
  end
end
