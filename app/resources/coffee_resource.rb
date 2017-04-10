class CoffeeResource < JSONAPI::Resource
  belongs_to :order
  attributes :name, :blend, :qty, :size, :roast, :price, :order_id
end
