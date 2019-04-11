class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :address
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
