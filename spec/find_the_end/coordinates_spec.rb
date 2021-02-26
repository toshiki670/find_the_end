# frozen_string_literal: true

RSpec.describe FindTheEnd::Coordinates do
  let(:instance) { described_class.new(x: x_coordinate, y: y_coordinate) }

  describe '#x' do
    subject { instance.x }

    context 'when success' do
      let(:x_coordinate) { 10 }
      let(:y_coordinate) { 20 }
      let(:result) { 10.0 }

      it { is_expected.to eq result }
    end

    context 'when failure' do
      let(:x_coordinate) { 10 }
      let(:y_coordinate) { 20 }
      let(:result) { 20.0 }

      it { is_expected.not_to eq result }
    end
  end

  describe '#y' do
    subject { instance.y }

    context 'when success' do
      let(:x_coordinate) { 10 }
      let(:y_coordinate) { 20 }
      let(:result) { 20.0 }

      it { is_expected.to eq result }
    end

    context 'when failure' do
      let(:x_coordinate) { 10 }
      let(:y_coordinate) { 20 }
      let(:result) { 10.0 }

      it { is_expected.not_to eq result }
    end
  end

  describe '.intersect_linears' do
    let(:actual_result) { described_class.intersect_linears(linear_p, linear_q) }

    context 'when success' do
      let(:linear_p) { FindTheEnd::Linear.new(slope: 2, intercept: 4) }
      let(:linear_q) { FindTheEnd::Linear.new(slope: -2, intercept: 2) }
      let(:expected_result) { described_class.new(x: -0.5, y: 3) }

      it 'is x_coordinate matches.' do
        expect(actual_result.x).to eq expected_result.x
      end

      it 'is y_coordinate matches.' do
        expect(actual_result.y).to eq expected_result.y
      end
    end
  end
end
