describe "Application routing" do
  it { {:get => '/'}.should route_to(controller: 'forums', action: 'index') }
end
