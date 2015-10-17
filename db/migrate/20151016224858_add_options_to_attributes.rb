class AddOptionsToAttributes < ActiveRecord::Migration
  def change
    add_column :attributes, :options, :string
  end
end
