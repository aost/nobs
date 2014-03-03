shared_examples "visit page" do
  it "shows header navigation bar" do
    navbar_sel = "header #navbar"

    expect(page).to have_css(navbar_sel)
    expect(page).to have_css("#{navbar_sel} .site-name", text: "Your Forums")
  end
end
