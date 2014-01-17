class User < ActiveRecord::Base
  has_many :assets

  has_many :assets_first_type, class_name: 'Asset', conditions: { asset_type: 1 }
  has_many :assets_second_type, class_name: 'Asset', conditions: { asset_type: 2 }
  has_many :assets_third_type, class_name: 'Asset', conditions: { asset_type: 3 }


  attr_accessible :email, 
                  :assets_attributes, 
                  :assets_first_type_attributes,
                  :assets_second_type_attributes,
                  :assets_third_type_attributes

  accepts_nested_attributes_for :assets,
    :allow_destroy => true

  accepts_nested_attributes_for :assets_first_type,
    :allow_destroy => true

  accepts_nested_attributes_for :assets_second_type,
    :allow_destroy => true

  accepts_nested_attributes_for :assets_third_type,
    :allow_destroy => true

  validates :email, presence: true
  validates_associated :assets, 
                       :assets_first_type,
                       :assets_second_type,
                       :assets_third_type
end
