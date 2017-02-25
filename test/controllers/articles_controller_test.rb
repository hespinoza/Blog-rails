require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post :create, article: { admin_id: @article.admin_id, body: @article.body, category: @article.category, image: @article.image, name: @article.name, plot: @article.plot, slug: @article.slug, state: @article.state, video: @article.video, visits_count: @article.visits_count }
    end

    assert_redirected_to article_path(assigns(:article))
  end

  test "should show article" do
    get :show, id: @article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @article
    assert_response :success
  end

  test "should update article" do
    patch :update, id: @article, article: { admin_id: @article.admin_id, body: @article.body, category: @article.category, image: @article.image, name: @article.name, plot: @article.plot, slug: @article.slug, state: @article.state, video: @article.video, visits_count: @article.visits_count }
    assert_redirected_to article_path(assigns(:article))
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete :destroy, id: @article
    end

    assert_redirected_to articles_path
  end
end
