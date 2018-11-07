class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|
      t.integer :fee
      t.string :about
      t.datetime :date
      t.string :venue
      t.references :gig_type, foreign_key: true
      t.references :client, foreign_key: true
      t.references :band, foreign_key: true

      t.timestamps
    end
  end
end
