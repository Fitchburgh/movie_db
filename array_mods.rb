# class Array
#   def get_odd_indexes
#     values_at(* each_index.select(&:odd?))
#   end
# end


class Array
  def odd_values
    e = [false, true].cycle
    select { e.next }
  end
  def even_values
    e = [true, false].cycle
    select { e.next }
  end
end
