# frozen_string_literal: true

module FindTheEnd
  # A point representing a coordinate.
  class Point
    attr_reader :x, :y

    def initialize(**params)
      @x = params[:x]
      @y = params[:y]
    end
  end
end
