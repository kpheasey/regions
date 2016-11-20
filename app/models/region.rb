class Region < ApplicationRecord
  scope :countries, -> { where(category: 'country') }

  belongs_to :region, optional: true

  has_many :regions

  validates :name, :code, :category, presence: true
  validates :code, uniqueness: { scope: :region_id }
end
