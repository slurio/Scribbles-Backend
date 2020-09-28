class CircleCanvasSerializer < ActiveModel::Serializer
  attributes :id, :posX, :posY, :radius, :dy, :dx, :color, :sound, :z_index

  
end
