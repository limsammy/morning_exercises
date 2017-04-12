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

  def test_word_count_returns_hash
    text_scan = TextScanner.new('alice.txt')

    assert_instance_of Hash, text_scan.word_count
  end

  def test_read_file_returns_string
    text_scan = TextScanner.new('alice.txt')

    assert_instance_of String, text_scan.read
  end
end