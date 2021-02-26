# frozen_string_literal: true

module FindTheEnd
  # X and Y representing a coordinate.
  class Coordinates
    attr_reader :x, :y

    def initialize(**params)
      @x = params[:x].to_f
      @y = params[:y].to_f
    end

    def self.intersect_linears(linear_p, linear_q)
      x = Rational(linear_q.intercept - linear_p.intercept, linear_p.slope - linear_q.slope).to_f
      y = linear_p.slope * x + linear_p.intercept

      Coordinates.new(x: x, y: y)
    end
  end
end
