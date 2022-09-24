# Melodie

define :part1 do
  2.times do
    play :A
    sleep 0.5
    play :A
    sleep 0.25
    play :A
    sleep 0.25
  end
end


define :part2 do
  2.times do
    play :G
    sleep 0.5
    play :G
    sleep 0.25
    play :G
    sleep 0.25
  end
end

use_bpm 100

part1

play :A
sleep 0.5
play :D
sleep 0.5
play :F
sleep 0.5
play :A
sleep 0.5

part2

play :G
sleep 0.5
play :C
sleep 0.5
play :E
sleep 0.5
play :G
sleep 0.5

part1

play :A
sleep 0.5
play :B
sleep 0.5
play :C5
sleep 0.5
play :D5
sleep 0.5

play :C5
sleep 0.5
play :A
sleep 0.5
play :G
sleep 0.5
play :E
sleep 0.5

play :D
sleep 1
play :D
sleep 1

##| Hooray Part

play :A
sleep 1
play :A
sleep 0.75
play :A
sleep 0.15

play :A
sleep 0.5
play :D
sleep 0.5
play :F
sleep 0.5
play :A
sleep 0.5

play :G
sleep 1
play :G
sleep 0.75
play :G
sleep 0.15

play :G
sleep 0.5
play :C
sleep 0.5
play :E
sleep 0.5
play :G
sleep 0.5

play :A
sleep 1
play :A
sleep 0.75
play :A
sleep 0.15

play :A
sleep 0.5
play :B
sleep 0.5
play :C5
sleep 0.5
play :D5
sleep 0.5

play :C5
sleep 0.5
play :A
sleep 0.5
play :G
sleep 0.5
play :E
sleep 0.5

play :D
sleep 1
play :D
sleep 1

# Beats

