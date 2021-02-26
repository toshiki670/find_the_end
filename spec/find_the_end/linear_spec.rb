# frozen_string_literal: true

RSpec.describe FindTheEnd::Linear do
  let(:instance) { described_class.new(slope: slope, intercept: intercept) }

  describe '#slope' do
    subject { instance.slope }

    context 'when success' do
      let(:slope) { 10 }
      let(:intercept) { 20 }
      let(:result) { 10 }

      it { is_expected.to eq result }
    end

    context 'when failure' do
      let(:slope) { 10 }
      let(:intercept) { 20 }
      let(:result) { 20 }

      it { is_expected.not_to eq result }
    end
  end

  describe '#intercept' do
    subject { instance.intercept }

    context 'when success' do
      let(:slope) { 10 }
      let(:intercept) { 20 }
      let(:result) { 20 }

      it { is_expected.to eq result }
    end

    context 'when failure' do
      let(:slope) { 10 }
      let(:intercept) { 20 }
      let(:result) { 10 }

      it { is_expected.not_to eq result }
    end
  end

  describe '.from_coordinates' do
    subject { FindTheEnd::Linear.from_coordinates(coordinate_p, coordinate_q) }

    context 'when success' do
      let(:coordinate_p) { FindTheEnd::Coordinates.new(x: -4, y: -1) }
      let(:coordinate_q) { FindTheEnd::Coordinates.new(x: 2, y: 2) }
      let(:slope) { 0.5 }
      let(:intercept) { 1.0 }
      let(:result) { FindTheEnd::Linear.new(slope: slope, intercept: intercept) }

      it { is_expected.to eq result }
    end

    # context 'when failure' do
    #   let(:coordinate_p) { FindTheEnd::Coordinates.new(x: -4, y: -1) }
    #   let(:coordinate_q) { FindTheEnd::Coordinates.new(x: 2, y: 2) }
    #   let(:slope) { 0.5 }
    #   let(:intercept) { 1 }

    #   it { is_expected.not_to eq result }
    # end
  end
end
