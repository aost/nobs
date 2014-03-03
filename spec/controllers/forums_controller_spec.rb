describe ForumsController do
  describe 'GET #index' do
    before do
      3.times { FactoryGirl.create(:forum) }
      get :index
    end

    it { should respond_with(:ok) }
    it { should render_template('index') }

    it { assigns(:forums).should eq Forum.all }
  end
end
