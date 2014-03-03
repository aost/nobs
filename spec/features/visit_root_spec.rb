describe "visit root" do
  before { visit '/' }

  include_examples "visit page"
  include_examples "visit forums"
end
