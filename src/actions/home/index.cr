class Home::Index < BrowserAction
  include Auth::AllowGuests

  get "/" do
    redirect Dashboard::Index
  end
end
