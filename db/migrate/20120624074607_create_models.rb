class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.primary_key :id
      t.string :game
      t.string :players
      t.string :gametype
      t.string :setting
      t.string :owner
      t.string :publisher
      t.string :plays
      t.string :playtime
      t.text :notes
      t.string :gamelink
      t.string :bgg_num
      t.string :imagelocation

      t.timestamps
    end
  end
end
