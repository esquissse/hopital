class AddColumnDocteurIdToActe < ActiveRecord::Migration[5.0]
  def change
    add_column :actes, :docteur_id, :integer
  end
end
