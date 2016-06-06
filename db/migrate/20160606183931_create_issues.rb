class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :name
      t.user_id :integer
      t.open :boolean
      t.private :boolean

      t.timestamps null: false
    end
  end
end
