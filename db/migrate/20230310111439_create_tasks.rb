class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :body
      t.integer :status

      t.timestamps
    end
  end
end
