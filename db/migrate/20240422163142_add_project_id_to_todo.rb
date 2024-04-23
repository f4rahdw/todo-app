class AddProjectIdToTodo < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :project_id, :integer
  end
end
