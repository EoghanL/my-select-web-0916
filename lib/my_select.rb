def my_select(collection)
    if block_given?
      counter = 0
      ret_arr = []
      while collection.length > counter
        ret_arr << collection[counter] if yield( collection[counter] )
        counter += 1
      end
      ret_arr
    else
      puts "I need, I said I need a goshdarned block!"
    end
end
