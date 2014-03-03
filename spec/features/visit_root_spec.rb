describe "visit root" do
  before do
    3.times { FactoryGirl.create(:forum) }
    visit '/'
  end

  include_examples "visit forums"
end
