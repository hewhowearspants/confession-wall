class CreateConfessions < ActiveRecord::Migration[5.1]
  def change
    create_table :confessions do |t|
      t.text :text
      t.integer :category_id

      t.timestamps
    end

    add_index :confessions, :category_id
  end
end
