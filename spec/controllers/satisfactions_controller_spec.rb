require "rails_helper"

describe SatisfactionsController, :type => :controller do
  it "renders template" do
    get :index
    expect(response).to render_template("index")
  end

  it "list created satisfactions" do
    sat = FactoryGirl::create(:satisfaction)
    get :index
    expect(assigns(:satisfactions)[0]).to eq(sat)
  end

  it "creates a Satisfaction" do
    expect {
      post :create, {:satisfaction => FactoryGirl.build(:high_sat).attributes.symbolize_keys}
    }.to change(Satisfaction, :count).by(1)

    expect(response).to redirect_to satisfaction_path(Satisfaction.last)
  end
end
