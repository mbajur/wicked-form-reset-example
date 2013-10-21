class User < ActiveRecord::Base
  has_many :assets

  attr_accessible :email, :assets_attributes

  accepts_nested_attributes_for :assets,
    :allow_destroy => true

  validates :email, presence: true
  validates_associated :assets
end
