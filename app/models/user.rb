class User < ActiveRecord::Base
  has_many :assets



  attr_accessible :email, :assets_attributes

  accepts_nested_attributes_for :assets,
    :allow_destroy => true

  validates :email, presence: true
  validates_associated :assets

  def first_type
    assets.select {|asset| asset.asset_type == 1}
  end

  def second_type
    assets.select {|asset| asset.asset_type == 2}
  end

  def third_type
    assets.select {|asset| asset.asset_type == 3}
  end
end
