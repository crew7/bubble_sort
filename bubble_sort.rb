def bubble_sort( values )
    no_swaps = false

    until no_swaps == true
        original_values = values.clone

        values.each_with_index do |value,index|
            next_index = index + 1
            next_value = values[next_index]

            break if next_value == nil

            if value > next_value
                values[index],values[next_index] = values[next_index],values[index]
            end
        end
        
        no_swaps = true if original_values == values
    end

    values
end

p bubble_sort([3,200,900,44,77,22])