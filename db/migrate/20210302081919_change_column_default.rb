class ChangeColumnDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default :categories, :priority, 1
  end
end
