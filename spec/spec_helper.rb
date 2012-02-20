# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper.rb"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
end

# add the library path
$LOAD_PATH.unshift File.join(__FILE__, '..', 'lib')
require 'svn'

require 'fileutils'

TMP_PATH = '/tmp'
TMP_REPO = File.join( TMP_PATH, 'ruby_svn_test_repo' )

CREATE_TMP_REPO = Proc.new do
  Svn::Repo.create(TMP_REPO)
end

REMOVE_TMP_REPO = Proc.new do
  # clean up the temporary repository, if it is present
  FileUtils.rm_rf TMP_REPO if File.exists? TMP_REPO
end
