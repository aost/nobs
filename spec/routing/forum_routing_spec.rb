describe Forum, "routing" do
  it { should route(:get, '/forums').to(controller: 'forums', action: 'index') }
  it { should route(:get, '/forums/2').to(controller: 'forums', action: 'show', id: 2) }
end
