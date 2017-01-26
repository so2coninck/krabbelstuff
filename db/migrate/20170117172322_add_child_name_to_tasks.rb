class AddChildNameToTasks < ActiveRecord::Migration[5.0]
  def change
add_column :tasks, :child_name, :string
  end
end
