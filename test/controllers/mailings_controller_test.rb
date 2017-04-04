require 'test_helper'

class MailingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mailing = mailings(:one)
  end

  test "should get index" do
    get mailings_url, as: :json
    assert_response :success
  end

  test "should create mailing" do
    assert_difference('Mailing.count') do
      post mailings_url, params: { mailing: { email: @mailing.email, name: @mailing.name } }, as: :json
    end

    assert_response 201
  end

  test "should show mailing" do
    get mailing_url(@mailing), as: :json
    assert_response :success
  end

  test "should update mailing" do
    patch mailing_url(@mailing), params: { mailing: { email: @mailing.email, name: @mailing.name } }, as: :json
    assert_response 200
  end

  test "should destroy mailing" do
    assert_difference('Mailing.count', -1) do
      delete mailing_url(@mailing), as: :json
    end

    assert_response 204
  end
end
