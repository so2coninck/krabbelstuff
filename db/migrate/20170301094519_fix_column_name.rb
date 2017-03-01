class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :tasks, :status, :statut
    end
end
