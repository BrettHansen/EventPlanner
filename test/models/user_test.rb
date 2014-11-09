require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "email" do
    @user = User.create(email: "notvalid", password: "password", password_confirmation: "password")
    assert_not @user.save

    @user = User.create(email: "notvalid@", password: "password", password_confirmation: "password")
    assert_not @user.save

    @user = User.create(email: "notvalid@com", password: "password", password_confirmation: "password")
    assert_not @user.save

    @user = User.create(email: "notvalid@.com", password: "password", password_confirmation: "password")
    assert_not @user.save

    @user = User.create(email: "notvalid.com", password: "password", password_confirmation: "password")
    assert_not @user.save

    @user = User.create(email: "valid@email.com", password: "password", password_confirmation: "password")
    assert @user.save
  end

  test "password" do
    @user = User.create(email: "email@email.com", password: "password", password_confirmation: "")
    assert_not @user.save

    @user = User.create(email: "email@email.com", password: "", password_confirmation: "password")
    assert_not @user.save

    @user = User.create(email: "email@email.com", password: "password1", password_confirmation: "password2")
    assert_not @user.save

    @user = User.create(email: "email@email.com", password: "password", password_confirmation: "password")
    assert @user.save
  end
  # test "the truth" do
  #   assert true
  # end
end
