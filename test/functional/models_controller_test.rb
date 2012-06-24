require 'test_helper'

class ModelsControllerTest < ActionController::TestCase
  setup do
    @model = models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create model" do
    assert_difference('Model.count') do
      post :create, model: { bgg_num: @model.bgg_num, game: @model.game, gamelink: @model.gamelink, gametype: @model.gametype, id: @model.id, imagelocation: @model.imagelocation, notes: @model.notes, owner: @model.owner, players: @model.players, plays: @model.plays, playtime: @model.playtime, publisher: @model.publisher, setting: @model.setting }
    end

    assert_redirected_to model_path(assigns(:model))
  end

  test "should show model" do
    get :show, id: @model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @model
    assert_response :success
  end

  test "should update model" do
    put :update, id: @model, model: { bgg_num: @model.bgg_num, game: @model.game, gamelink: @model.gamelink, gametype: @model.gametype, id: @model.id, imagelocation: @model.imagelocation, notes: @model.notes, owner: @model.owner, players: @model.players, plays: @model.plays, playtime: @model.playtime, publisher: @model.publisher, setting: @model.setting }
    assert_redirected_to model_path(assigns(:model))
  end

  test "should destroy model" do
    assert_difference('Model.count', -1) do
      delete :destroy, id: @model
    end

    assert_redirected_to models_path
  end
end
