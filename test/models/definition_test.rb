require 'test_helper'

class DefinitionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "definitions without a word, meaning, and part of speech are invalid" do
    definition = Definition.new

    refute definition.valid? , "Definition without a word and meaning are invalid"
  end

  test "definitions with a word, meaning, and part of speech are valid" do
    definition = Definition.new(word: "testing", meaning: "catch bugs before they happen", part_of_speech: "verb")

    assert definition.valid?, "Definition needs word, meaning, and part of speech to be valid"
  end

  test "definitions must have a word to be valid" do
    definition = Definition.new(meaning: "catch bugs before they happen", part_of_speech: "verb")

    refute definition.valid? , "Definition must have a word to be valid"
  end

  test "definitions must have a meaning to be valid" do
    definition = Definition.new(word: "testing", part_of_speech: "verb")

    refute definition.valid? , "Definition must have a meaning to be valid"
  end

  test "definitions must have a part of speech to be valid" do
    definition = Definition.new(word: "testing", meaning: "catch bugs before they happen")

    refute definition.valid? , "Definition must have a meaning to be valid"
  end

  test "words should be unique" do
    definition1 = Definition.create(word: "testing", meaning: "catch bugs before they happen", part_of_speech: "verb")
    definition2 = Definition.create(word: "testing", meaning: "companies do it or want to do it", part_of_speech: "verb")

    # tries to add a second model with the same value, see that it fails.
    refute definition2.valid?, "Should not have the same word multiple times"
  end

  test "search function should find newly created word" do
    definition = Definition.new(word: "testing", meaning: "catch bugs before they happen", part_of_speech: "verb")
    Definition.search("testing")

    assert word:"testing"
  end

  test "" do
    skip

    assert
  end
end
