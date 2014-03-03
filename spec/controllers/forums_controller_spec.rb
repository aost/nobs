describe ForumsController do
  shared_context "setup forums"

  describe 'GET #index' do
    before { get :index }

    it { should respond_with(:ok) }
    it { should render_template('index') }

    it { assigns(:forums).should eq Forum.all }
  end
end
