describe "visit forum" do
  include_context "setup forums"
  let(:forum) { Forum.first }
  before { visit "/forums/#{forum.id}" }

  it "shows forum name" do
    expect(page).to have_css("#forum-name", text: forum.name)
  end

  it "lists topics" do
    topic = "#topics .topic"

    expect(page).to have_css(topic, count: 3)

    forum.topics.each do |record|
      expect(page).to have_css("#{topic} .name", text: record.name)
    end
  end
end
