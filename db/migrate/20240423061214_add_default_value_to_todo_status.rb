class AddDefaultValueToTodoStatus < ActiveRecord::Migration[7.0]
  def change
    change_column_default :todos, :status, false
  end
end
