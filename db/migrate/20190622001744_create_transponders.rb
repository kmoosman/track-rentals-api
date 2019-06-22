class CreateTransponders < ActiveRecord::Migration[5.2]
  def change
    create_table :transponders do |t|
      t.string :number
      t.boolean :rented
      t.string :rented_by
      t.timestamps
    end
  end
end


# events: [{name: "USGP Round 1", date: "April 24th, 2019", location: "Austin, TX", 
#             transponders: [{number: 1, rented: true, rented_by: "John Williams" },
#                           {number: 2, rented: false, rented_by: ""}] },
#     {name: "USGP Round 2", date: "June 26th, 2019", location: "Tooele, UT", 
#     transponders: [{number: 1, rented: true, rented_by: "John Williams"},
#                   {number: 2, rented: false, rented_by: ""}]}
#             ],