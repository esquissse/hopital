class AddColumnServiceIdToSejour < ActiveRecord::Migration[5.0]
  def change
    add_column :sejours, :service_id, :integer
  end
end
