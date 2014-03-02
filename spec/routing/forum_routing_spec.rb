describe Forum, "routing" do
  it { should route(:get, '/forums').to(controller: 'forums', action: 'index') }
end
