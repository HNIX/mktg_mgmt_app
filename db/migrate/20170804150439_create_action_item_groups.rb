class CreateActionItemGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :action_item_groups do |t|
      t.string :name
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
