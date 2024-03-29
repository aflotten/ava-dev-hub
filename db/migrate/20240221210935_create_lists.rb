class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :title
      t.text :notes
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
