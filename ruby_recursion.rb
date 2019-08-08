def upcase(str)
    return str.upcase if str.length <= 1 
    # puts str
    p str[0].upcase + upcase(str[1..-1])
end

def iterative_upcase(str)
    str.split("").map(&:capitalize).join("")
end


def reverse(str)
    return str if str.length <= 1
    str[-1] + reverse(str[0..-2])
end

def iterative_reverse(str)
    # reversed = ""
    # i = 0
    # while i < str.length
    #     reversed = str[i] + reversed
    #     i += 1
    # end
    # reversed

    reversed = []
    str.split("").each do |char|
        reversed.unshift(char)
    end
    reversed.join("")
end

def quick_sort(arr)
    return arr if arr.length <= 1
    pivot_arr = [arr.first]
    left_side = arr[1..-1].select{ |ele| ele < arr.first }
    right_side = arr[1..-1].select{ |ele| ele >= arr.first }
    quick_sort(left_side) + pivot_arr + quick_sort(right_side)
end