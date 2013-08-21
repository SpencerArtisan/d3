require 'application'

describe Application do
  let (:application) { Application.new }

  it 'should not contain any links initially' do
    expect(application.links).to be_empty
  end

  it 'should allow adding of links' do
    link = double
    application.add_link link
    expect(application.links).to eq [link]
  end
end
