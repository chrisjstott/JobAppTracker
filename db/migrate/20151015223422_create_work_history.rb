class CreateWorkHistory < ActiveRecord::Migration
  def change
    create_table :work_histories do |t|
      t.string :employer_name, null: false
      t.string :employer_city
      t.string :employer_phone
      t.string :position
      t.text :duties
      t.string :supervisor
      t.time :start_date
      t.time :end_date
      
      t.timestamps null:false
    end
  end
end
