describe ForumsController do
  include_context "setup forums"

  describe 'GET #index' do
    before { get :index }

    it { should respond_with(:ok) }
    it { should render_template('index') }

    it { assigns(:forums).should eq Forum.all }
  end

  describe 'GET #show' do
    let(:id) { Forum.first.id }
    before { get :show, id: id }

    it { should respond_with(:ok) }
    it { should render_template('show') }

    it { assigns(:forum).should eq Forum.find(id) }
  end
end
