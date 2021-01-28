require 'pry'

def move_zeros(arr)
    new_arr = arr.filter { |n| n != 0 }
    (arr.length - new_arr.length).times { new_arr << 0 }
    new_arr
end

# def two_sum(nums, target)
#     filt_nums = nums.filter { |n| n <= target }
#     filt_nums.each_with_index do |num1, i|
#         filt_nums.each_with_index do |num2, j|
#             if j > i
#                 if num1 + num2 == target
#                     return {index1: i, index2: j}
#                 end
#             end
#         end
#     end
# end

def two_sum(nums, target)
    filt_nums = nums.filter { |n| n <= target }
    while filt_nums.length > 0
        if filt_nums[0] + filt_nums[-1] < target
            filt_nums.shift
        elsif filt_nums[0] + filt_nums[-1] > target
            filt_nums.pop
        else
            return {index1: nums.index(filt_nums[0]), index2: nums.index(filt_nums[-1])}
        end
    end
end

#sliding window pattern

array2 = [5, 8, 9, 10, 12, 13, 15, 18, 20]
# 2 + 8 < 18
# 5 + 15 > 18
# 5 + 11 < 18
# 6 + 11 < 18
# 8 + 11 > 18

# print move_zeros(array)
print two_sum(array2, 22)
puts