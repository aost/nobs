describe "visit topic" do
  include_context "setup forums"
  let(:topic) { Topic.first }
  before { visit "/topics/#{topic.id}" }

  include_examples "visit page"

  it "shows topic name" do
    expect(page).to have_css("#topic .name", text: topic.name)
  end
end
