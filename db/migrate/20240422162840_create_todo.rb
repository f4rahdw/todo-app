class CreateTodo < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.text :description
      t.boolean :status
      t.timestamps
    end
  end
end
