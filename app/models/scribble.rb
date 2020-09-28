class Scribble < ApplicationRecord
  belongs_to :user
  has_many :circle_canvases
  has_one :background_canvas
end
