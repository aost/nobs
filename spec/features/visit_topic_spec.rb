describe "visit topic" do
  let(:topic) { Topic.first }
  before { visit "/topics/#{topic.id}" }

  include_examples "visit page"

  it "shows topic name" do
    expect(page).to have_css("#topic-name", text: topic.name)
  end

  it "shows posts" do
    post_sel = "#posts .post"

    expect(topic.posts.count).to be > 0
    expect(page).to have_css(post_sel, count: topic.posts.count)

    topic.posts.each do |post|
      expect(page).to have_css("#{post_sel} .content", text: post.content)
      expect(page).to have_css("#{post_sel} .user")
      expect(page).to have_css("#{post_sel} .user .username", text: post.user.username)
    end
  end
end
