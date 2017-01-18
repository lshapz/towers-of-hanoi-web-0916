

def move_disk(num, from, to, extra)
  if num == 0
    return []
  elsif num == 1
    return [1]
  else
    extra << from[0..num-1] 
    to << from[-1]
    to << extra 
  end

  to.flatten[1..-1] 
end

# move n−1 discs from A to B. This leaves disc n alone on peg A
# move disc n from A to C
# move n−1 discs from B to C so they sit on disc n 
