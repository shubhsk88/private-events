class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.decimal :price
      t.datetime :starts_at
      t.text :description

      t.timestamps
    end
  end
end
