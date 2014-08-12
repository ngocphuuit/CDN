require 'test_helper'

class ResumesControllerTest < ActionController::TestCase
  setup do 
    @resume = resumes(:one)
  end
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    assert_difference('Resume.count') do
      post :create, resume: { name: @resume.name, attachment: @resume.attachment }
    end
    assert_redirected_to resumes_path
  end

  test "should get destroy" do
    assert_difference('Resume.count',-1) do
      delete :destroy, id: @resume 
    end
    assert_redirected_to resumes_path
  end

end
