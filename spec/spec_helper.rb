# See https://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration

require 'rspec/retry'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  # 再試行関連の設定
  config.verbose_retry = true
  config.display_try_failure_messages = true
  config.default_retry_count = 3
end
