describe "Home" do
  before { visit '/' }

  it "shows header navigation bar" do
    navbar = "header .navbar"

    expect(page).to have_css(navbar)
    expect(page).to have_css("#{navbar} .navbar-brand", text: "Your Forums")
  end
end
