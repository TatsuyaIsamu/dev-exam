class CreateBasicInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :basic_informations do |t|
      t.text :building_name
      t.integer :rent
      t.text :address
      t.integer :age
      t.text :info

      t.timestamps
    end
  end
end
