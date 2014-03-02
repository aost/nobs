require 'spec_helper'

describe Forum do
  fields = %i[name description]
  fields.each do |field|
    it { should respond_to(field) }
  end
end
