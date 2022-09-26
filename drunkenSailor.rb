# Melodie

define :snippet1 do |n|
  2.times do
    play_pattern_timed [n,n,n], [0.5, 0.25, 0.25]
  end
end

define :snippet2 do
  play_pattern_timed [:A,:B,:C5,:D5], 0.5
  play_pattern_timed [:C5,:A,:G,:E], 0.5
  play :D
  sleep 1
  play :D
  sleep 1
end

use_bpm 100

live_loop :basemelody do
  use_synth :bass_foundation
  
  snippet1 :A
  play_pattern_timed [:A,:D,:F,:A], 0.5
  snippet1 :G
  play_pattern_timed [:G,:C,:E,:G], 0.5
  snippet1 :A
  snippet2
  
  ##| Hooray Part
  
  in_thread do
    sample :drum_splash_soft
  end
  
  in_thread do
    
    play_pattern_timed [:a,:a,:a], [1, 0.75, 0.25]
    play_pattern_timed [:A,:D,:F,:A], 0.5
    play_pattern_timed [:g,:g,:g], [1, 0.75, 0.25]
    play_pattern_timed [:G,:C,:E,:G], 0.5
    play_pattern_timed [:a,:a,:a], [1, 0.75, 0.25]
    
    snippet2
  end
end

live_loop :chordies do
  
  use_synth :hollow
  
  2.times do
    play chord(:d3, :minor), sustain: 2.0
    sleep 2
  end
  
  2.times do
    play chord(:c3, :major), sustain: 2.0
    sleep 2
  end
  
  2.times do
    play chord(:d3, :minor), sustain: 2.0
    sleep 2
  end
  
  play chord(:c3, :major), sustain: 2.0
  sleep 2
  
  3.times do
    play chord(:d3, :minor), sustain: 2.0
    sleep 2
  end
  
  2.times do
    play chord(:c3, :major), sustain: 2.0
    sleep 2
  end
  2.times do
    play chord(:d3, :minor), sustain: 2.05
    sleep 2
  end
  play chord(:c3, :major), sustain: 2.0
  sleep 2
  play chord(:d3, :minor), sustain: 2.0
  sleep 2
end


live_loop :drum1 do
  with_fx :reverb, room: 0.9 do
    sample :bd_mehackit, amp: 0.4
    
    sleep 1.0
  end
end

live_loop :drum2 do
  sample :drum_snare_soft, amp: 0.7
  sleep 1.0
end

# Beats
