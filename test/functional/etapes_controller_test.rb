require 'test_helper'

class EtapesControllerTest < ActionController::TestCase
  setup do
    @etape = etapes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:etapes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create etape" do
    assert_difference('Etape.count') do
      post :create, etape: { nom: @etape.nom, rappel: @etape.rappel }
    end

    assert_redirected_to etape_path(assigns(:etape))
  end

  test "should show etape" do
    get :show, id: @etape
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @etape
    assert_response :success
  end

  test "should update etape" do
    put :update, id: @etape, etape: { nom: @etape.nom, rappel: @etape.rappel }
    assert_redirected_to etape_path(assigns(:etape))
  end

  test "should destroy etape" do
    assert_difference('Etape.count', -1) do
      delete :destroy, id: @etape
    end

    assert_redirected_to etapes_path
  end
end
