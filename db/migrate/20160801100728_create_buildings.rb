class CreateBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :buildings do |t|
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :country
      t.string :manager_name

      t.timestamps
    end
  end
end
