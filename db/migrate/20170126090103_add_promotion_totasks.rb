class AddPromotionTotasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :promotion, :string
  end
end
