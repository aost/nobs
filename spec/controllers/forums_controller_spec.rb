describe ForumsController do
  include_context "setup forums"

  include_examples "resource index", Forum
  include_examples "resource show", Forum
end
