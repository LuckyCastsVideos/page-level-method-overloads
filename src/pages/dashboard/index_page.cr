class Dashboard::IndexPage < AuthLayout
  def page_title
    "Dashboard"
  end

  def content
    div class: "bg-white overflow-hidden shadow rounded-lg" do
      div class: "border-b border-gray-200 px-4 py-5 sm:px-6" do
        h1 "Your Dashboard", class: "font-medium text-lg"
      end

      div class: "px-4 py-5 sm:p-6" do
        if (user = current_user)
          h3 "Welcome, #{user.email}!"
        else
          h3 "You should sign up to see things here!"
        end
      end
    end
  end
end
