class Hunt < ApplicationRecord
  belongs_to :user
  belongs_to :exhibit
  validates :user_id, presence: true, uniqueness: { scope: :exhibit_id }
  validates :exhibit_id, presence: true, uniqueness: { scope: :user_id }
end
