def move_disk(num_disks, from_peg, via_peg, to_peg)
  if from_peg.size == 0 && via_peg.size == 0 && to_peg.size == 0
    return []
  end

  if num_disks == 1
    to_peg.unshift(from_peg.shift)
  else
    via_peg.unshift(from_peg.shift)
    move_disk(num_disks-1, from_peg, via_peg, to_peg)
    to_peg.unshift(via_peg.shift)
  end

  to_peg
end
