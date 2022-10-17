use_synth :piano
in_thread do
  use_bpm 200
  2.times do
    play 52, rate: 2
    sleep 1
    play 57
    sleep 1
    play 59
    sleep 1
    play 60
    sleep 1
    play 57, rate: 3
    sleep 2
  end
  
  play 52
  sleep 1
  play 57
  sleep 1
  play 59
  sleep 1
  play 60, rate: 2
  sleep 1
  play 59
  sleep 0.5
  play 57
  sleep 0.5
  play 60, rate: 2
  sleep 1
  play 59
  sleep 0.5
  play 57
  sleep 0.5
  play 64, rate: 7
  sleep 1.25
  play 64, rate: 7
  sleep 1.25
  play 64, rate: 7
  sleep 1
  play 62
  sleep 1
  play 64
  sleep 1
  play 65, rate: 5
  sleep 1.25
  play 65, rate: 5
  sleep 2
  play 65, rate: 5
  sleep 1
  play 64
  sleep 1
  play 62
  sleep 1
  play 65
  sleep 1
  play 64, rate: 7
  sleep 2
  play 62
  sleep 1
  play 60
  sleep 1
  play 59, rate: 3
  sleep 1.5
  play 64
  sleep 1.5
  play 60
  sleep 1.5
  play 59
  sleep 1.5
  play 57
  sleep 5
end
