class ActionItem < ApplicationRecord
  belongs_to :project
  belongs_to :action_item_group
  validates_presence_of :name
  validates_uniqueness_of :name
end
