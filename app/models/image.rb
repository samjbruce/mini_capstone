class Image < ApplicationRecord
  belongs_to :product
  validates_format_of :url, :with => %r{\.(png|jpg|jpeg)$}i, :message => "Image URL must have valid file type", :multiline => true
end
