class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.string :url
      t.references :course
      t.timestamps
    end
  end
end
