class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.string :description
      t.string :url
      t.references :course
      t.string :image
      t.timestamps
    end
  end
end
