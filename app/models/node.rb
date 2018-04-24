class Node < ApplicationRecord
  belongs_to :directory_tree
  belongs_to :parent, class_name: 'Node', required: false
  has_many :children, class_name: 'Node', foreign_key: 'parent_id'

  scope :roots, -> { where(parent_id: nil) }
end
