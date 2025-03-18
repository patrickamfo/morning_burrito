class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  validates :status, presence: true
  validates :user, uniqueness: { scope: :challenge }
  validates :status, inclusion: { in: ["Pending","In Progress","Completed"] }
end
