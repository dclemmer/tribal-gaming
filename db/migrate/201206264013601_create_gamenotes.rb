class CreateGamenotes < ActiveRecord::Migration
  def change
  create_table :gamenotes do |t|
      t.integer :games_id
      t.text :gamenote
      t.timestamps
    end
  end
end

