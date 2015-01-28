require "rails_helper"

describe UsersController, type: :controller do
  it "can create user" do
    expect do
      post :create, user: {fullname: "Jo Jo", email: "jojo@example.com", displayname: "jojo", password: "jojojojo", password_confirmation: "jojojojo" }
    end.to change(User, :count).by(1)
    response.should be_redirect
  end

  it "cannot create admin" do
    expect do
      post :create, user: {fullname: "Jo Jo", email: "jojo@example.com", displayname: "jojo", password: "jojojojo", password_confirmation: "jojojojo", role: "admin" }
    end.to change(User, :count).by(1)
    # response.should_not be_
    expect(User.last.role).to eq("default")
  end
end
