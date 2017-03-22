class AddColumnPatientIdToActe < ActiveRecord::Migration[5.0]
  def change
    add_column :actes, :patient_id, :integer
  end
end
