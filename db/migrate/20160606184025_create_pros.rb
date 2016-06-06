class CreatePros < ActiveRecord::Migration
  def change
    create_table :pros do |t|
      t.string :name
      t.issue_id :integer
      t.integer :weight

      t.timestamps null: false
    end
  end
end
