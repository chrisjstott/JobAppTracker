class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :name, null: false
      t.string :full_text, null: false
      t.boolean :active, null: false
      t.string :input_type, null: false
      t.string :size
      t.string :group

      t.timestamps null: false
    end
  end
end
