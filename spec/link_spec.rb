require 'link'

describe Link do
  it { should respond_to :name }
  it { should respond_to :url }
end
