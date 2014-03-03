describe "visit forum" do
  include_context "setup forums"
  let(:forum) { Forum.first }
  before { visit "/forums/#{forum.id}" }

  it "shows forum name" do
    expect(page).to have_css("#forum-name", text: forum.name)
  end

  it "lists topics" do
    topic_sel = "#topics .topic"

    expect(page).to have_css(topic_sel, count: forum.topics.count)

    forum.topics.each do |topic|
      expect(page).to have_css("#{topic_sel} .name", text: topic.name)
    end
  end
end
