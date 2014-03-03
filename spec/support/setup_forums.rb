shared_context "setup forums" do
  before do
    3.times { FactoryGirl.create(:forum) }
  end
end
