class Array
  def get_odd_indexes
    values_at(* each_index.select(&:odd?))
  end
end
