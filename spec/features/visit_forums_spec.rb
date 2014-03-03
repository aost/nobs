describe "visit forums" do
  before { visit '/forums' }

  include_examples "visit page"
  include_examples "visit forums"
end
