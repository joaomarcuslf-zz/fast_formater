require 'rspec'
require_relative '../lib/fast_formater.rb'

describe FastFormater::Formater do

  before {
    @formating_tester = FastFormater::Formater.new
  }

  context 'Converting a hash to json type' do
    subject do
      {
        font: "Arial",
        size: 17,
        style: "bold"
      }
    end


    it 'should convert correctly to json' do
      expect(@formating_tester.getJson(subject)).to eq "{\"font\":\"Arial\",\"size\":17,\"style\":\"bold\"}"
    end
  end

  context 'Converting a hash to xml type' do
    subject do
      {
        font: "Arial",
        size: 17,
        style: "bold"
      }
    end


    it 'should convert correctly to xml' do
      expect(@formating_tester.getXml(subject)).to eq "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n<unknown>\n   <font>Arial</font>\n   <size>17</size>\n   <style>bold</style>\n   <title>unknown</title>\n</unknown>"
    end
  end


end
