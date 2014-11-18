class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.integer :user_id
      t.string :name
      t.text :description
      t.integer :estimated_time
      t.integer :real_time
      t.integer :status_id

      t.timestamps
    end
  end
end
