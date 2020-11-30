class CircleCanvasSerializer < ActiveModel::Serializer
  attributes :id, :posX, :posY, :radius, :dy, :dx, :color, :octave, :note, :z_index

  belongs_to :scribble
end
