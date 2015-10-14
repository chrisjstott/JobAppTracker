class AddNotesToJobApp < ActiveRecord::Migration
  def change
    add_column :job_apps, :notes, :text
  end
end
