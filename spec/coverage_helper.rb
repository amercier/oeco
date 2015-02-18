require 'simplecov'
formatters = [ SimpleCov::Formatter::HTMLFormatter ]

# Coveralls code coverage
if ENV.has_key? 'COVERALLS_REPO_TOKEN'
  require 'coveralls'
  Coveralls::Output::silent = true
  formatters.push(Coveralls::SimpleCov::Formatter)
end

# Code Climate code coverage
if ENV.has_key? 'CODECLIMATE_REPO_TOKEN'
  require 'codeclimate-test-reporter'
  formatters.push(CodeClimate::TestReporter::Formatter)
end

SimpleCov.formatters = formatters
SimpleCov.start 'rails'
