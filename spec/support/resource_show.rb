shared_examples "resource show" do |resource_type|
  let(:resource_sym) { resource_type.name.downcase.to_sym }

  describe 'GET #show' do
    let(:id) { resource_type.first.id }
    before { get :show, id: id }

    it { should respond_with(:ok) }
    it { should render_template('show') }

    it { assigns(resource_sym).should eq resource_type.find(id) }
  end
end
