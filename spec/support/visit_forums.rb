shared_examples "visit forums" do
  it "shows header navigation bar" do
    navbar = "header .navbar"

    expect(page).to have_css(navbar)
    expect(page).to have_css("#{navbar} .navbar-brand", text: "Your Forums")
  end

  it "lists forums" do
    forum = "#forums .forum"

    expect(page).to have_css(forum, count: 3)

    Forum.all.each do |record|
      expect(page).to have_css("#{forum} .name", text: record.name)
      expect(page).to have_css("#{forum} .description", text: record.description)
    end
  end
end
