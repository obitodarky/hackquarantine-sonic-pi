use_bpm 120

live_loop :random_name do
  sample :drum_bass_soft, amp: 0.5
  sleep 1
  sample :drum_snare_soft, amp: 0.5, rate: 2
  sleep 0.5
  
  sample :drum_cymbal_closed, amp: 0.5, rate: 2
  sleep 1
  
  sample :bd_gas, beat_stretch: 1, amp: 1.5, pan: (range -1,1,0.5).mirror.tick
  sleep 0.3
  sample :bd_gas, beat_stretch: 1, amp: 1.5, pan: (range 1,-1,-0.5).mirror.tick
  sleep 1
end
