class CreateTickets < ActiveRecord::Migration[8.0]
  def change
    create_table :tickets do |t|
      t.string :tittle
      t.float :price
      t.text :desciption

      t.timestamps
    end
  end
end
