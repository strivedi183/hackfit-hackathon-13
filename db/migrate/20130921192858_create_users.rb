class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :weight
      t.integer :height
      t.string :location
      t.string :url
      t.string :image
      t.timestamps
    end
  end
end
