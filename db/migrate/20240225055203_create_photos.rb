class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :image
      t.text :comment
      
      t.timestamps
    end
  end
end
