shared_examples "visit forums" do
  it "shows header navigation bar" do
    navbar_sel = "header #navbar"

    expect(page).to have_css(navbar_sel)
    expect(page).to have_css("#{navbar_sel} .site-name", text: "Your Forums")
  end

  it "lists forums" do
    forum_sel = "#forums .forum"

    expect(page).to have_css(forum_sel, count: Forum.count)

    Forum.all.each do |forum|
      expect(page).to have_css("#{forum_sel} .name", text: forum.name)
      expect(page).to have_css("#{forum_sel} .description", text: forum.description)
    end
  end
end
