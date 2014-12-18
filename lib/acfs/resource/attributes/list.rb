module Acfs::Resource::Attributes
  # @api public
  #
  # List attribute type. Use it in your model as an attribute type:
  #
  # @example
  #   class User < Acfs::Resource
  #     attribute :name, :list
  #   end
  #
  class List < Base
    # @api public
    #
    # Cast given object to a list.
    #
    # @param [Object] obj Object to cast.
    # @return [Fixnum] Casted object as list.
    # @raise [TypeError] If object cannot be casted to a list.
    #
    def cast_type(obj)
      return obj.to_a if obj.respond_to? :to_a
      raise TypeError.new "Cannot cast #{obj.inspect} to array."
    end
  end
end
