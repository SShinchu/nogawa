class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.text :title
      t.text :name
      t.text :mate

      t.timestamps
    end
  end
end
