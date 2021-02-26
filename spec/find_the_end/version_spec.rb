# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'FindTheEnd::VERSION' do
  version_types = %i[
    major_version
    minor_version
    revision_version
    invalid_last_space
  ].freeze

  let(:version) { FindTheEnd::VERSION }
  let(:split_version) { version.split('.') }

  version_types.each_with_index do |version_type, idx|
    let(version_type) { split_version[idx] }
  end

  context 'when full version types' do
    subject { version }

    it { is_expected.to be_a_kind_of(String) }
    it { is_expected.not_to be_nil }
  end

  version_types[..-2].each do |version_type|
    context "when #{version_type}" do
      subject { method(version_type).call }

      it { is_expected.to be_a_kind_of(String) }
      it { is_expected.to be_numeric }
      it { is_expected.not_to be_nil }
    end
  end

  context 'when invalid last space' do
    subject { invalid_last_space }

    it { is_expected.to be_nil }
  end
end
