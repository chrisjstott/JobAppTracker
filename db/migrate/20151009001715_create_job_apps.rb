class CreateJobApps < ActiveRecord::Migration
  def change
    create_table :job_apps do |t|
      t.string :name, null: false
      t.string :status, null: false
      t.string :data, null: false
      
      t.timestamps null: false
    end
  end
end
