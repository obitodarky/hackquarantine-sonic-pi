use_debug false

sixteenth  = 0.25
live_loop :melody do
  the_chord = chord(:c3, :major7, num_octaves: 3)
  play the_chord, amp: 0.4
  sleep sixteenth
end

live_loop :trance_bass do
  sleep 10
  sample :bass_trance_c, amp: 0.4
end

sleep 5
live_loop :kicks do
  sync :melody
  sample :drum_bass_soft, cutoff: 80
  sleep sixteenth
end

sleep 10

live_loop :melody_new do
  use_synth :saw
  sync :melody
  notes = (scale :c3, :indian , num_octaves: 1).shuffle.mirror
  play notes.tick, amp: 0.5, cutoff: 80, release: 0.25
  sleep sixteenth
end

sleep 10

live_loop :something2 do
  with_fx :echo do
    sample :guit_e_fifths, amp: 0.1
    sleep 10
  end
end
