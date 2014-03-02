require 'spec_helper'

describe Topic do
  fields = %i[name forum_id]
  fields.each do |field|
    it { should respond_to(field) }
  end

  it { should belong_to(:forum) }
end
