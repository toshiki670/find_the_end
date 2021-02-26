# frozen_string_literal: true

module FindTheEnd
  # Linear equation.
  # TODO: Wheter to implement distance
  # Math.sqrt((x2-x1)^2+(y2-y1)^2)
  class Linear
    attr_reader :slope, :intercept

    def initialize(**params)
      @slope = params[:slope].to_f
      @intercept = params[:intercept].to_f
    end

    def angle
      Math.atan(@slope) * 180 / Math::PI
    end

    class << self
      def from_coordinates(coordinate_p, coordinate_q)
        slope = slope_coordinates(coordinate_p, coordinate_q)
        intercept = intercept_coordinates(coordinate_p, coordinate_q)

        Linear.new(slope: slope, intercept: intercept)
      end

      private

      def slope_coordinates(coordinate_p, coordinate_q)
        Rational(coordinate_q.y - coordinate_p.y, coordinate_q.x - coordinate_p.x).to_f
      end

      def intercept_coordinates(coordinate_p, coordinate_q)
        Rational(coordinate_q.x * coordinate_p.y - coordinate_p.x * coordinate_q.y,
                 coordinate_q.x - coordinate_p.x).to_f
      end
    end
  end
end
