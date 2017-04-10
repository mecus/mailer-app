require 'test_helper'

class CoffeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffee = coffees(:one)
  end

  test "should get index" do
    get coffees_url, as: :json
    assert_response :success
  end

  test "should create coffee" do
    assert_difference('Coffee.count') do
      post coffees_url, params: { coffee: { blend: @coffee.blend, name: @coffee.name, order_id: @coffee.order_id, price: @coffee.price, qty: @coffee.qty, roast: @coffee.roast, size: @coffee.size } }, as: :json
    end

    assert_response 201
  end

  test "should show coffee" do
    get coffee_url(@coffee), as: :json
    assert_response :success
  end

  test "should update coffee" do
    patch coffee_url(@coffee), params: { coffee: { blend: @coffee.blend, name: @coffee.name, order_id: @coffee.order_id, price: @coffee.price, qty: @coffee.qty, roast: @coffee.roast, size: @coffee.size } }, as: :json
    assert_response 200
  end

  test "should destroy coffee" do
    assert_difference('Coffee.count', -1) do
      delete coffee_url(@coffee), as: :json
    end

    assert_response 204
  end
end
