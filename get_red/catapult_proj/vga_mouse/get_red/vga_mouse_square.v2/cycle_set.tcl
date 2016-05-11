
# Loop constraints
directive set /vga_mouse_square/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /vga_mouse_square/core/core:rlp/main CSTEPS_FROM {{. == 3} {.. == 0}}

# IO operation constraints
directive set /vga_mouse_square/core/core:rlp/main/io_read(video_in:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/io_read(vga_xy:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/io_write(red_left_x:rsc.d) CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/io_write(red_right_x:rsc.d) CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/io_write(y_red:rsc.d) CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/io_write(video_out:rsc.d) CSTEPS_FROM {{.. == 2}}

# Real operation constraints
directive set /vga_mouse_square/core/core:rlp/main/if:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/if:acc CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/if:if:acc CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/if:if:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/else#1:acc CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/else#1:if:acc CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/else#1:if:if:acc CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/else#1:if:if:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/mux#5 CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/mux#6 CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/mux#7 CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/if#3:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/if#3:acc CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/if#3:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/if#3:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/oelse:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/oelse:acc CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/oelse:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/oelse:acc#4 CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/if#3:acc#9 CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/if#3:acc#4 CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/if#3:acc#10 CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/if#3:acc#6 CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/else#4:acc CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/else#4:if:acc CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/else#4:if:acc#1 CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/else#4:and CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/else#4:or CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/else#4:or#1 CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/or CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/and CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/or#3 CSTEPS_FROM {{.. == 2}}
directive set /vga_mouse_square/core/core:rlp/main/mux#8 CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/else#1:mux#3 CSTEPS_FROM {{.. == 1}}
directive set /vga_mouse_square/core/core:rlp/main/mux#9 CSTEPS_FROM {{.. == 1}}
