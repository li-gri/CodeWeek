# Welcome to Sonic Pi

use_bpm 110

use_synth :sine

sample

in_thread do
  2.times do
    play (chord :E, :m9), attack: 0.5, release: 3.5
    sleep 4
    play (chord :B, :m9), attack: 0.5, release: 3.5
    sleep 4
    play (chord :F, :maj9), attack: 0.5, release: 3.5
    sleep 4
    play (chord :C, :maj9), attack: 0.5, release: 3.5
    sleep 4
  end
end

define :melody do
  play :d7
  sleep 0.25
  play :e7
  sleep 0.75
  
  play :d7
  sleep 0.25
  play :e7
  sleep 2.75
end


in_thread do
  # first verse
  melody
  
  with_transpose -5 do
    melody
  end
  
  with_transpose -7 do
    melody
  end
  
  with_transpose -5 do
    melody
  end
  
  # second verse 1 octave lower
  with_transpose -12 do
    melody
  end
  
  with_transpose -17 do
    melody
  end
  
  with_transpose -19 do
    melody
  end
  
  
  play :a6
  sleep 0.25
  play :b6
  sleep 1.75
  
  play :d7
  sleep 0.25
  play :a7
  sleep 1.75
  
end