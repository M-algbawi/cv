class CreateAnschreibens < ActiveRecord::Migration
  def change
    create_table :anschreibens do |t|
      t.string :name
      t.string :address
      t.string :stadt
      t.string :bewerbungals
      t.text :kompetenzen
      t.string :firmaname
      t.string :firmaaddress
      t.string :firmastadt

      t.timestamps null: false
    end
  end
end
