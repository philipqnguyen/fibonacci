class Fibonacci

  def sequence(previous_nums, current_pos, target_pos)
    previous_nums << (previous_nums[previous_nums.length - 2] + previous_nums[previous_nums.length - 1])
    return previous_nums.last if current_pos == target_pos
    current_pos += 1
    sequence(previous_nums, current_pos, target_pos)
  end

  def position(target_pos)
    if target_pos == 0
      0
    elsif target_pos == 1
      1
    else
      current_pos = 2
      previous_nums = [0, 1]
      sequence(previous_nums, current_pos, target_pos)
    end
  end
end
