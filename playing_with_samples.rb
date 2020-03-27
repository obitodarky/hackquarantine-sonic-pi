use_bpm 120

live_loop :kekw do
  sample :loop_compus, beat_stretch: 15
  live_loop :tabla do
    sample :tabla_tas3, amp: 0.5
    sleep 3.7
  end
  sample :loop_safari, beat_stretch: 15
  sleep 15
end
