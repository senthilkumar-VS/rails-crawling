require 'test_helper'

class CrawlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crawl = crawls(:one)
  end

  test "should get index" do
    get crawls_url
    assert_response :success
  end

  test "should get new" do
    get new_crawl_url
    assert_response :success
  end

  test "should create crawl" do
    assert_difference('Crawl.count') do
      post crawls_url, params: { crawl: {  } }
    end

    assert_redirected_to crawl_url(Crawl.last)
  end

  test "should show crawl" do
    get crawl_url(@crawl)
    assert_response :success
  end

  test "should get edit" do
    get edit_crawl_url(@crawl)
    assert_response :success
  end

  test "should update crawl" do
    patch crawl_url(@crawl), params: { crawl: {  } }
    assert_redirected_to crawl_url(@crawl)
  end

  test "should destroy crawl" do
    assert_difference('Crawl.count', -1) do
      delete crawl_url(@crawl)
    end

    assert_redirected_to crawls_url
  end
end
