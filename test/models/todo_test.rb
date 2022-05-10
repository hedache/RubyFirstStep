# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class TodoTest < ActiveSupport::TestCase


  # def test_lol
  # end

  test "title should not be empty" do
    todo = Todo.new
    todo.save
    # assert !todo.persisted?
    # assert_not todo.persisted
    puts todo.errors.full_messages
    assert todo.errors.any?, "No encontramos errores"
  end

  test "todo should be saved if title is present" do
    todo = Todo.new
    todo.title = "Title example"
    todo.save
    # assert !todo.persisted?
    # assert_not todo.persisted
    puts todo.errors.full_messages
    assert todo.persisted?
  end

  # def title should not be empty
  # end

  # test "the truth" do
  #   assert true
  # end
end
