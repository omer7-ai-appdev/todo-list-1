class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :user_id
      t.boolean :in_progress
      t.boolean :done

      t.timestamps
    end
  end
end
