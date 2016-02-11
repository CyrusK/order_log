class Order < ActiveRecord::Base
    has_many :deliveries
end
