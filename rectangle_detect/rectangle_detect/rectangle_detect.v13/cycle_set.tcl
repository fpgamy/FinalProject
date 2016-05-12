
# Loop constraints
directive set /rectangle_detect/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /rectangle_detect/core/core:rlp/main CSTEPS_FROM {{. == 4} {.. == 0}}

# IO operation constraints
directive set /rectangle_detect/core/core:rlp/main/io_read(vga_xy:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/io_read(video_in:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/io_read(reset:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#1:io_read(x_top_left:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#1:io_read(width:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#1:io_read(y_top_left:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#1:io_read(height:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#3:io_read(height:rsc.d) CSTEPS_FROM {{.. == 2}}
directive set /rectangle_detect/core/core:rlp/main/if#3:io_read(y_top_left:rsc.d) CSTEPS_FROM {{.. == 2}}
directive set /rectangle_detect/core/core:rlp/main/else#2:if:io_read(height:rsc.d) CSTEPS_FROM {{.. == 3}}
directive set /rectangle_detect/core/core:rlp/main/else#2:if:io_read(y_top_left:rsc.d) CSTEPS_FROM {{.. == 3}}
directive set /rectangle_detect/core/core:rlp/main/io_write(filled:rsc.d) CSTEPS_FROM {{.. == 3}}
directive set /rectangle_detect/core/core:rlp/main/io_write(video_out:rsc.d) CSTEPS_FROM {{.. == 3}}

# Real operation constraints
directive set /rectangle_detect/core/core:rlp/main/and CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#1:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#1:acc CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#1:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#1:acc#4 CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#1:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#1:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#1:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#1:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/acc#5 CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/acc CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#1:if:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/if#1:if:acc CSTEPS_FROM {{.. == 2}}
directive set /rectangle_detect/core/core:rlp/main/mux#1 CSTEPS_FROM {{.. == 2}}
directive set /rectangle_detect/core/core:rlp/main/acc#4 CSTEPS_FROM {{.. == 2}}
directive set /rectangle_detect/core/core:rlp/main/if#3:acc#2 CSTEPS_FROM {{.. == 2}}
directive set /rectangle_detect/core/core:rlp/main/if#3:acc CSTEPS_FROM {{.. == 2}}
directive set /rectangle_detect/core/core:rlp/main/if#3:acc#3 CSTEPS_FROM {{.. == 2}}
directive set /rectangle_detect/core/core:rlp/main/if#3:acc#1 CSTEPS_FROM {{.. == 2}}
directive set /rectangle_detect/core/core:rlp/main/else#2:acc CSTEPS_FROM {{.. == 2}}
directive set /rectangle_detect/core/core:rlp/main/else#2:if:acc#2 CSTEPS_FROM {{.. == 3}}
directive set /rectangle_detect/core/core:rlp/main/else#2:if:acc CSTEPS_FROM {{.. == 3}}
directive set /rectangle_detect/core/core:rlp/main/else#2:if:acc#3 CSTEPS_FROM {{.. == 3}}
directive set /rectangle_detect/core/core:rlp/main/else#2:if:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /rectangle_detect/core/core:rlp/main/else#2:and CSTEPS_FROM {{.. == 3}}
directive set /rectangle_detect/core/core:rlp/main/mux#2 CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/mux#3 CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/mux#4 CSTEPS_FROM {{.. == 1}}
directive set /rectangle_detect/core/core:rlp/main/and#1 CSTEPS_FROM {{.. == 3}}
