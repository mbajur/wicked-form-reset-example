class Asset < ActiveRecord::Base
  belongs_to :user
  attr_accessible :asset_type, :value

  validates :value, presence: true, numericality: { only_integer: true }
end
