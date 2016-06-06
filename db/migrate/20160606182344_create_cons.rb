class CreateCons < ActiveRecord::Migration
  def change
    create_table :cons do |t|
      t.integer :issue_id
      t.string :name
      t.integer :weight

      t.timestamps null: false
    end
  end
end
