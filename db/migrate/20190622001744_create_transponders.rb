class CreateTransponders < ActiveRecord::Migration[5.2]
  def change
    create_table :transponders do |t|
      t.string :number
      t.boolean :rented
      t.string :rented_by
      t.integer :event_id
      t.timestamps
    end
  end
end


