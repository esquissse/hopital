class AddColumnSejourIdToActe < ActiveRecord::Migration[5.0]
  def change
    add_column :actes, :sejour_id, :integer
  end
end
