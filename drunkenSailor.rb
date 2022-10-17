# Funktionen

define :note_widerholen do |note|
  2.times do
    play_pattern_timed [note,note,note], [0.5, 0.25, 0.25]
  end
end

define :muster1 do
  play_pattern_timed [:A,:B,:C5,:D5], 0.5
  play_pattern_timed [:C5,:A,:G,:E], 0.5
  play :D
  sleep 1
  play :D
  sleep 1
end


##| Melodie

use_bpm 90

live_loop :melodie do
  use_synth :bass_foundation
  
  note_widerholen :A
  play_pattern_timed [:A,:D,:F,:A], 0.5
  note_widerholen :G
  play_pattern_timed [:G,:C,:E,:G], 0.5
  note_widerholen :A
  muster1
  
  ##| Hooray Teil
  
  play_pattern_timed [:a,:a,:a], [1, 0.75, 0.25]
  play_pattern_timed [:A,:D,:F,:A], 0.5
  play_pattern_timed [:g,:g,:g], [1, 0.75, 0.25]
  play_pattern_timed [:G,:C,:E,:G], 0.5
  play_pattern_timed [:a,:a,:a], [1, 0.75, 0.25]
  muster1
  
end

live_loop :akkorde do
  use_synth :pretty_bell
  
  2.times do
    play chord(:d, :minor), sustain: 1.5
    sleep 2
  end
  
  2.times do
    play chord(:c, :major), sustain: 1.5
    sleep 2
  end
  
  2.times do
    play chord(:d, :minor), sustain: 1.5
    sleep 2
  end
  
  play chord(:c, :major), sustain: 1.5
  sleep 2
  
  3.times do
    play chord(:d, :minor), sustain: 1.75
    sleep 2
  end
  
  2.times do
    play chord(:c, :major), sustain: 1.5
    sleep 2
  end
  
  2.times do
    play chord(:d, :minor), sustain: 1.5
    sleep 2
  end
  
  play chord(:c, :major), sustain: 1.5
  sleep 2
  
  play chord(:d, :minor), sustain: 1.5
  sleep 2
end

##| Beats

live_loop :drums1 do
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 1
end

live_loop :drum2 do
  with_fx :reverb, room: 0.9 do
    sample :bd_mehackit, amp: 0.4
    sleep 1.0
  end
end

live_loop :drum3 do
  sample :drum_snare_soft, amp: 0.7
  sleep 1.0
end

live_loop :hihat do
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_pedal
  sleep 1
end

live_loop :bass do
  use_synth :fm
  play :c2, attack: 0, release: 0.25
  sleep 0.25
  play :c2, attack: 0, release: 0.3
  sleep 2
  play :e2
  sleep 0.75
  play :f2
  sleep 1
end



