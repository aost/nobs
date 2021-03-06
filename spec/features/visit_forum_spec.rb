describe "visit forum" do
  let(:forum) { Forum.first }
  before { visit "/forums/#{forum.id}" }

  include_examples "visit page"

  it "shows forum name" do
    expect(page).to have_css("#forum-name", text: forum.name)
  end

  it "lists topics" do
    topic_sel = "#topics .topic"

    expect(forum.topics.count).to be > 0
    expect(page).to have_css(topic_sel, count: forum.topics.count)

    forum.topics.each do |topic|
      expect(page).to have_css("#{topic_sel} .name", text: topic.name)
    end
  end
end
