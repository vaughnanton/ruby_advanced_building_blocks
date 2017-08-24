require './spec_helper'

describe Enumerable do
  include enumerable

  let(:base_array) {[1,4,3,6,7,8]}
  
  describe "#{}my_each" do

    context "when no block is given" do
      it "returns an enumerable object" do
        expect(base_array.my_each)to be_instance_of(Enumerator)
      end
    end

    context "when a block is given" do
      it "returns an array object" do
        expect(base_array.my_each {|num| num}).to be_instance_of(Array)
      end
    end
  end
end
