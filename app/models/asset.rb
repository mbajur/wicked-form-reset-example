class Asset < ActiveRecord::Base
  belongs_to :user
  attr_accessible :asset_type, :value

  scope :first_type,  -> { where( asset_type: 1 ) }
  scope :second_type, -> { where( asset_type: 2 ) }
  scope :third_type,  -> { where( asset_type: 3 ) }

  validates :value, presence: true, numericality: { only_integer: true }
end
