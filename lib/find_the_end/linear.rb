# frozen_string_literal: true

module FindTheEnd
  # Linear equation.
  class Linear
    attr_reader :slope, :intercept

    def initialize(**params)
      @slope = params[:slope].to_f
      @intercept = params[:intercept].to_f
    end

    def ==(other)
      self.slope == other.slope && self.intercept == other.intercept
    end

    def self.from_coordinates(coordinate_p, coordinate_q)
      slope = Rational(coordinate_q.y - coordinate_p.y, coordinate_q.x - coordinate_p.x).to_f
      intercept = Rational(coordinate_q.x * coordinate_p.y - coordinate_p.x * coordinate_q.y, coordinate_q.x - coordinate_p.x).to_f

      Linear.new(slope: slope, intercept: intercept)
    end
  end
end
