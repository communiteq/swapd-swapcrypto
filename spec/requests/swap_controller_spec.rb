# frozen_string_literal: true

RSpec.describe SwapController do
  it "serves the ember shell for /swap" do
    get "/swap"
    expect(response.status).to eq(200)
    expect(response.body).to include("<html")
  end

  it "serves the ember shell for /crypto" do
    get "/crypto"
    expect(response.status).to eq(200)
    expect(response.body).to include("<html")
  end
end
