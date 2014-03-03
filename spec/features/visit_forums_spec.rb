describe "visit forums" do
  before do
    3.times { FactoryGirl.create(:forum) }
    visit '/forums'
  end

  include_examples "visit forums"
end
