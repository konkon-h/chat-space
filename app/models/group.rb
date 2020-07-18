class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users    # 多対多のアソシエーション
  validates :name, presence: true, uniqueness: true
end
