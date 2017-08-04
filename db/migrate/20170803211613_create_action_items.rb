class CreateActionItems < ActiveRecord::Migration[5.0]
  def change
    create_table :action_items do |t|
      t.string :name
      t.text :description
      t.string :status
      t.date :due_date
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
