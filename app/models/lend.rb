class Lend < ApplicationRecord
  has_one :user, :class_name => "user"
  has_one :product, :class_name => "product"
end
