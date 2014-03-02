shared_examples "has fields" do |fields|
  fields.each do |field|
    it { should respond_to(field) }
  end
end
