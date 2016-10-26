class CreateSponsers < ActiveRecord::Migration
  def change
    create_table :sponsers do |t|
      t.string :name
      t.references :player, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
