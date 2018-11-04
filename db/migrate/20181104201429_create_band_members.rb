class CreateBandMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :band_members do |t|
      t.string :bm_name
      t.string :biography
      t.references :band, foreign_key: true

      t.timestamps
    end
  end
end
