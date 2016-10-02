class Class

  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create bar getter
    
    class_eval %Q(
      def #{attr_name}=(new_attr)
          @#{attr_name} = new_attr
          if !defined? @#{attr_name + "_history"}
            @#{attr_name + "_history"} = [nil]
          end
          @#{attr_name}_history.push(new_attr)
      end
      
      def #{attr_name}_history
        if !defined? @#{attr_name + "_history"}
          @#{attr_name + "_history"} = [nil]
        end
        @#{attr_name}_history
      end
      )
  end
end

class Foo
  attr_accessor_with_history :bar
end