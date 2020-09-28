class ScribbleSerializer < ActiveModel::Serializer
  attributes :id, :title, :user, :background_canvas

  belongs_to :user
  has_many :circle_canvases
  has_one :background_canvas
end
