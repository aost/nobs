describe "visit root" do
  include_context "setup forums"
  before { visit '/' }

  include_examples "visit page"
  include_examples "visit forums"
end
