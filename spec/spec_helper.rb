# frozen_string_literal: true

require 'find_the_end'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  RSpec::Matchers.define :be_numeric do
    match do |actual|
      actual.match?(/\A\d+\Z/)
    end
  end
end
