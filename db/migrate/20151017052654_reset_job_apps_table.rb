class ResetJobAppsTable < ActiveRecord::Migration
  def change
    drop_table :job_apps
    
    create_table :job_apps do |t|
      t.string :status, null: false
      t.text :notes
      t.integer :position_id
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.string :middle_name
      t.string :phone_number
      t.string :email_address
      t.string :current_address
      t.string :current_city
      t.string :current_state
      t.string :current_state_dropdown
      t.string :current_zip_code
      t.string :current_country
      t.string :previous_address
      t.string :previous_city
      t.string :previous_state
      t.string :previous_state_dropdown
      t.string :previous_zip_code
      t.string :previous_country
      t.boolean :eligible
      t.boolean :over_16
      t.boolean :over_18
      t.boolean :over_21
      t.boolean :felony
      t.string :highest_education
      t.string :school1_name
      t.string :school1_yrs
      t.string :school1_degree
      t.string :school1_grad
      t.string :school2_name
      t.string :school2_yrs
      t.string :school2_degree
      t.string :school2_grad
      t.string :certifications
      t.boolean :military
      t.boolean :veteran
      t.string :military_branch
      t.string :ref1_name
      t.string :ref1_phone
      t.string :ref1_relation
      t.string :ref2_name
      t.string :ref2_phone
      t.string :ref2_relation
      t.string :ref3_name
      t.string :ref3_phone
      t.string :ref3_relation
      
      t.timestamps null: false
    end
    
    add_index :job_apps, :position_id
  end
end
