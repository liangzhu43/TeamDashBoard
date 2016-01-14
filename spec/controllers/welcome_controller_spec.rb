require "rails_helper"

describe WelcomeController, :type => :controller do
  it "should render template" do
    get :index
    expect(response).to render_template("index")
  end

  it "should give 200 OK" do
    get :index
    expect(response.status).to eq(200)
  end
end
