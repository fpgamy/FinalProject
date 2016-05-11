
# Loop constraints
directive set /red_detect/core/main CSTEPS_FROM {{. == 2}}

# IO operation constraints
directive set /red_detect/core/main/io_read(vga_xy:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /red_detect/core/main/io_read(video_in:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /red_detect/core/main/if:io_write(redOut:rsc.d)#1 CSTEPS_FROM {{.. == 1}}
directive set /red_detect/core/main/if#1:io_write(endRow:rsc.d)#1 CSTEPS_FROM {{.. == 1}}
directive set /red_detect/core/main/if#2:io_write(endScreen:rsc.d)#1 CSTEPS_FROM {{.. == 1}}
directive set /red_detect/core/main/io_write(video_out:rsc.d) CSTEPS_FROM {{.. == 1}}

# Real operation constraints
directive set /red_detect/core/main/acc CSTEPS_FROM {{.. == 1}}
directive set /red_detect/core/main/if:acc CSTEPS_FROM {{.. == 1}}
directive set /red_detect/core/main/if:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /red_detect/core/main/acc#1 CSTEPS_FROM {{.. == 1}}
directive set /red_detect/core/main/or CSTEPS_FROM {{.. == 1}}
directive set /red_detect/core/main/mux#1 CSTEPS_FROM {{.. == 1}}
directive set /red_detect/core/main/and CSTEPS_FROM {{.. == 1}}
