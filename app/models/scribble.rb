class Scribble < ApplicationRecord
  belongs_to :user
  has_many :circle_canvases, dependent: :destroy
  has_one :background_canvas, dependent: :destroy
end
