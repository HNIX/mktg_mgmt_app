class ActionItemGroup < ApplicationRecord
  belongs_to :project
  has_many :action_items

  validates_presence_of :name
  validates_uniqueness_of :name

end
