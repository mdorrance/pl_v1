require 'test_helper'

class PromotionsControllerTest < ActionController::TestCase
  setup do
    @promotion = promotions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promotions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promotion" do
    assert_difference('Promotion.count') do
      post :create, promotion: { content: @promotion.content, download_link: @promotion.download_link, download_name: @promotion.download_name, email: @promotion.email, map_link: @promotion.map_link, password: @promotion.password, phone: @promotion.phone, photo1: @promotion.photo1, photo2: @promotion.photo2, photo3: @promotion.photo3, photo4: @promotion.photo4, subtitle: @promotion.subtitle, title: @promotion.title, user_id: @promotion.user_id, video_embed: @promotion.video_embed }
    end

    assert_redirected_to promotion_path(assigns(:promotion))
  end

  test "should show promotion" do
    get :show, id: @promotion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promotion
    assert_response :success
  end

  test "should update promotion" do
    put :update, id: @promotion, promotion: { content: @promotion.content, download_link: @promotion.download_link, download_name: @promotion.download_name, email: @promotion.email, map_link: @promotion.map_link, password: @promotion.password, phone: @promotion.phone, photo1: @promotion.photo1, photo2: @promotion.photo2, photo3: @promotion.photo3, photo4: @promotion.photo4, subtitle: @promotion.subtitle, title: @promotion.title, user_id: @promotion.user_id, video_embed: @promotion.video_embed }
    assert_redirected_to promotion_path(assigns(:promotion))
  end

  test "should destroy promotion" do
    assert_difference('Promotion.count', -1) do
      delete :destroy, id: @promotion
    end

    assert_redirected_to promotions_path
  end
end
