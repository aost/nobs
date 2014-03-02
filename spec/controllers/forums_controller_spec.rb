describe ForumsController do
  describe 'GET #index' do
    before { get :index }

    it { should respond_with(:ok) }
    it { should render_template('index') }
  end
end
