class CreateBandInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :band_instruments do |t|
      t.string :bi_name
      t.string :bi_brand
      t.string :bi_type
      t.references :band, foreign_key: true
      t.references :BandMember, foreign_key: true

      t.timestamps
    end
  end
end
