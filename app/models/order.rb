class Order < ActiveRecord::Base
    has_many :deliveries, dependent: :destroy
end
