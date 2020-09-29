class BackgroundCanvasSerializer < ActiveModel::Serializer
  attributes :id, :background_style, :z_index

  belongs_to :scribble
end
