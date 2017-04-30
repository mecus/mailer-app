class OrderResource < JSONAPI::Resource
  has_many :coffees, dependent: :destroy
  attributes :name, :email, :telephone, :address, :postcode, :city, :country,
  :amount, :orderid, :status, :itemsid, :customerid, :created_at
  # filter :status, default: 'pending'
end
