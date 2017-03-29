require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/text_scanner'

class TextScannerTest < Minitest::Test
  def test_text_scan_object_is_created
    text_scan = TextScanner.new

    assert_instance_of TextScanner, text_scan
  end

  def test_text_scanner_initializes_with_file_as_nil
    text_scan = TextScanner.new

    assert_nil text_scan.file
  end
end