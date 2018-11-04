class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string :band_name
      t.datetime :founded
      t.string :bandtype
      t.integer :band_contact_number
      t.string :band_biography

      t.timestamps
    end
  end
end
