class CreateTodosTable < ActiveRecord::Migration
  def up
    create_table :todos do |t|
      t.string :todo_name
    end
  end

  def down
    drop_table :todos
  end
end
