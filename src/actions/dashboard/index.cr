class Dashboard::Index < BrowserAction
  include Auth::AllowGuests

  get "/dashboard" do
    html Dashboard::IndexPage
  end
end
