require 'test_helper'

class CodeSnippetsControllerTest < ActionController::TestCase
  setup do
    @code_snippet = code_snippets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_snippets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_snippet" do
    assert_difference('CodeSnippet.count') do
      post :create, code_snippet: { code: @code_snippet.code, created_at: @code_snippet.created_at, created_by: @code_snippet.created_by, deleted_at: @code_snippet.deleted_at, description: @code_snippet.description, integer: @code_snippet.integer, integer: @code_snippet.integer, status: @code_snippet.status, title: @code_snippet.title, updated_by: @code_snippet.updated_by, updated_date: @code_snippet.updated_date, user_id: @code_snippet.user_id }
    end

    assert_redirected_to code_snippet_path(assigns(:code_snippet))
  end

  test "should show code_snippet" do
    get :show, id: @code_snippet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_snippet
    assert_response :success
  end

  test "should update code_snippet" do
    patch :update, id: @code_snippet, code_snippet: { code: @code_snippet.code, created_at: @code_snippet.created_at, created_by: @code_snippet.created_by, deleted_at: @code_snippet.deleted_at, description: @code_snippet.description, integer: @code_snippet.integer, integer: @code_snippet.integer, status: @code_snippet.status, title: @code_snippet.title, updated_by: @code_snippet.updated_by, updated_date: @code_snippet.updated_date, user_id: @code_snippet.user_id }
    assert_redirected_to code_snippet_path(assigns(:code_snippet))
  end

  test "should destroy code_snippet" do
    assert_difference('CodeSnippet.count', -1) do
      delete :destroy, id: @code_snippet
    end

    assert_redirected_to code_snippets_path
  end
end
