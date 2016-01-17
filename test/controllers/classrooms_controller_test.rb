require 'test_helper'

class ClassroomsControllerTest < ActionController::TestCase
  setup do
    @classroom = classrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classroom" do
    assert_difference('Classroom.count') do
      post :create, classroom: { course_id: @classroom.course_id, course_id: @classroom.course_id, student_first_name: @classroom.student_first_name, student_id: @classroom.student_id, student_id: @classroom.student_id, student_last_name: @classroom.student_last_name, tutor_first_name: @classroom.tutor_first_name, tutor_id: @classroom.tutor_id, tutor_id: @classroom.tutor_id, tutor_last_name: @classroom.tutor_last_name }
    end

    assert_redirected_to classroom_path(assigns(:classroom))
  end

  test "should show classroom" do
    get :show, id: @classroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classroom
    assert_response :success
  end

  test "should update classroom" do
    patch :update, id: @classroom, classroom: { course_id: @classroom.course_id, course_id: @classroom.course_id, student_first_name: @classroom.student_first_name, student_id: @classroom.student_id, student_id: @classroom.student_id, student_last_name: @classroom.student_last_name, tutor_first_name: @classroom.tutor_first_name, tutor_id: @classroom.tutor_id, tutor_id: @classroom.tutor_id, tutor_last_name: @classroom.tutor_last_name }
    assert_redirected_to classroom_path(assigns(:classroom))
  end

  test "should destroy classroom" do
    assert_difference('Classroom.count', -1) do
      delete :destroy, id: @classroom
    end

    assert_redirected_to classrooms_path
  end
end
