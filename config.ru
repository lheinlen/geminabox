$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "lib")))
require "geminabox"

Geminabox.data = ENV['GEMINABOX_DATA_PATH'] if ENV['GEMINABOX_DATA_PATH']
Geminabox.build_legacy = ENV['GEMINABOX_BUILD_LEGACY'].downcase.strip == 'true' if ENV['GEMINABOX_BUILD_LEGACY']

run Geminabox::Server
