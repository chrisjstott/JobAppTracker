class AddPositionIdToJobApp < ActiveRecord::Migration
  def change
    add_column :job_apps, :position_id, :integer
  end
end
