require 'test_helper'

class MenuTest < ActiveSupport::TestCase
  test "should save menu" do
    menu = Menu.new title: "testing", description: "testing is awesome"
    assert menu.save
  end

  test "should not save menu without title" do
    menu = Menu.new title: "", description: "testing is awesome"
    assert_not menu.save
  end

  test "should not save menu without description" do
    menu = Menu.new title: "testing", description: ""
    assert_not menu.save
  end

  test "should destroy menu" do
    menu = Menu.new title: "testing", description: "testing is awesome"
    menu.save
    assert menu.destroy
  end

  test "should save item inside menu" do
    menu = Menu.new title: "testing", description: "testing is awesome"
    menu.save
    item = 'item teste'
    menu.item << item
    assert menu.save
  end

  test "should delete item inside menu" do
    menu = Menu.new title: "testing", description: "testing is awesome"
    menu.save
    item = 'item teste'
    menu.item << item
    menu.save
    menu.item.delete(item)
    assert menu.save
  end

end
