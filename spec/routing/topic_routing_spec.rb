describe Topic, "routing" do
  it { should route(:get, '/topics/2').to(controller: 'topics', action: 'show', id: 2) }
end
