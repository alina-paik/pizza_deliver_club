class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :title_image
end
