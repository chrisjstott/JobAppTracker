class AddMoreColumnsToJobApp < ActiveRecord::Migration
  def change
    remove_column :job_apps, :data
    rename_column :job_apps, :name, :first_name
    
    add_column :job_apps, :last_name, :string, null: false
    add_column :job_apps, :phone_number, :string
    add_column :job_apps, :email_address, :string
    add_column :job_apps, :city, :string
    add_column :job_apps, :citizen_resident, :boolean
    add_column :job_apps, :highest_education, :string
    add_column :job_apps, :school_name, :string
    add_column :job_apps, :education_yrs, :string
    add_column :job_apps, :military, :boolean
    add_column :job_apps, :ref1_name, :string
    add_column :job_apps, :ref1_phone, :string
    add_column :job_apps, :ref1_relation, :string
    add_column :job_apps, :ref2_name, :string
    add_column :job_apps, :ref2_phone, :string
    add_column :job_apps, :ref2_relation, :string
  end
end
