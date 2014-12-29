require 'minitest/autorun'
require 'minitest/pride'
require './list'

class ListTest < Minitest::Test
  def test_it_exists
    assert List.new
  end

  def test_it_starts_empty
    list = List.new
    assert list.empty?
  end

  def test_it_can_hold_one_element
    list = List.new
    list.push("Hello!")
    assert_equal 1, list.count
    assert_equal "Hello!", list.first
  end

  def test_the_last_element_of_an_empty_list_is_nil
    list = List.new
    assert_equal nil, list.last
  end

  def test_the_last_element_of_a_one_element_list_is_that_element
    list = List.new
    list.push("Lastie")
    assert_equal "Lastie", list.last
  end

  def test_the_last_element_of_a_two_element_list_is_the_one_inserted_last
    list = List.new
    list.push("Firstie")
    list.push("Lastie")
    assert_equal "Lastie", list.last
  end

  def test_the_last_element_of_a_three_element_list_is_the_one_inserted_last
    list = List.new
    list.push("Firstie")
    list.push("Middler")
    list.push("Lastie")
    assert_equal "Lastie", list.last
  end

  def test_the_last_element_of_a_four_element_list_is_the_one_inserted_last
    list = List.new
    list.push("Firstie")
    list.push("Middler 1")
    list.push("Middler 2")
    list.push("Lastie")
    assert_equal 4, list.count
    assert_equal "Lastie", list.last
  end

  def test_it_can_hold_two_elements
    list = List.new
    list.push("Hello")
    list.push("World")
    assert_equal 2, list.count
    assert_equal "Hello", list.first
    assert_equal "World", list.last
  end

  def test_it_pops_nil_from_an_empty_list
    list = List.new
    assert_equal nil, list.pop
  end

  def test_it_pops_the_only_element_from_a_one_element_list
    list = List.new
    list.push("Solo")
    assert_equal 1, list.count
    result = list.pop
    assert_equal "Solo", result
    assert_equal 0, list.count
  end

  def test_it_pops_the_last_element_from_a_two_element_list
    list = List.new
    list.push("Hello")
    list.push("World")
    assert_equal 2, list.count
    assert_equal "World", list.pop
    assert_equal 1, list.count
  end

  def test_it_pops_the_last_element_from_a_four_element_list
    list = List.new
    list.push("Firstie")
    list.push("Middler 1")
    list.push("Middler 2")
    list.push("Lastie")
    assert_equal 4, list.count
    assert_equal "Lastie", list.pop
    assert_equal 3, list.count
  end
end
