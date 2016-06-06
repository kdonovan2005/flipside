class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :name
      t.integer :user_id
      t.boolean :open
      t.boolean :private

      t.timestamps null: false
    end
  end
end
