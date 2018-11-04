class CreateGigTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :gig_types do |t|
      t.string :event
      t.string :privacy

      t.timestamps
    end
  end
end
