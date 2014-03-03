shared_examples "resource index" do |resource_type|
  let(:resources_sym) { "#{resource_type.name.downcase}s" }

  describe 'GET #index' do
    before { get :index }

    it { should respond_with(:ok) }
    it { should render_template('index') }

    it { assigns(resources_sym).should eq resource_type.all }
  end
end
