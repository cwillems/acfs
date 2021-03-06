require 'spec_helper'

describe Acfs::Resource::Attributes::Float do
  let(:model) { Class.new Acfs::Resource }
  subject { described_class.new }

  describe 'cast' do
    it 'should return same object, if obj is already of float class' do
      expect(subject.cast(1.3)).to be == 1.3
    end

    it 'should return parsed object, if obj is of Fixnum class' do
      expect(subject.cast(7)).to be == 7.0
    end

    it 'should return parsed object, if obj is of String class containing a float' do
      expect(subject.cast('1.7')).to be == 1.7
    end
  end
end
