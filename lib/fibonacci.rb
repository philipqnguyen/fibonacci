class Fibonacci

  def position(target_pos)
    return "Invalid input" if invalid_input(target_pos)

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

private

  def sequence(previous_nums, current_pos, target_pos)
    previous_nums = [previous_nums[1], previous_nums[0] + previous_nums[1]]

    return previous_nums.last if current_pos == target_pos

    current_pos += 1
    sequence(previous_nums, current_pos, target_pos)
  end

  def invalid_input(target_pos)
    if target_pos.is_a?(Integer) && target_pos >= 0
      false
    else
      true
    end
  end
end
