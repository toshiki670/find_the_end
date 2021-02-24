# frozen_string_literal: true

module FindTheEnd
  # X and Y representing a coordinate.
  class Coordinates
    attr_reader :x, :y

    def initialize(**params)
      @x = params[:x]
      @y = params[:y]
    end
  end
end
