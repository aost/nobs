describe "visit forums" do
  include_context "setup forums"
  before { visit '/forums' }

  include_examples "visit forums"
end
