class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  t.string :name
	  t.string :email
	  t.integer :weight
	  t.integer :height
	  t.string	:location
	  t.string	:type

      t.timestamps
    end
  end
end
