# frozen_string_literal: true

RSpec.describe FindTheEnd::Coordinates do
  let(:instance) { described_class.new(x: x_coordinate, y: y_coordinate) }

  describe '#x' do
    subject { instance.x }

    context 'when success' do
      let(:x_coordinate) { 10 }
      let(:y_coordinate) { 20 }
      let(:result)  { 10 }

      it { is_expected.to eq result }
    end

    context 'when failure' do
      let(:x_coordinate) { 10 }
      let(:y_coordinate) { 20 }
      let(:result)  { 20 }

      it { is_expected.not_to eq result }
    end
  end

  describe '#y' do
    subject { instance.y }

    context 'when success' do
      let(:x_coordinate) { 10 }
      let(:y_coordinate) { 20 }
      let(:result)  { 20 }

      it { is_expected.to eq result }
    end

    context 'when failure' do
      let(:x_coordinate) { 10 }
      let(:y_coordinate) { 20 }
      let(:result)  { 10 }

      it { is_expected.not_to eq result }
    end
  end

  # describe '.intersect_lines' do
  #   # TODO: ...
  # end
end
