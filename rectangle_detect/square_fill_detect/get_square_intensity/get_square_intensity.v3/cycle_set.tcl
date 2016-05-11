
# Loop constraints
directive set /get_square_intensity/core/main CSTEPS_FROM {{. == 3}}

# IO operation constraints
directive set /get_square_intensity/core/main/io_read(vga_xy:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/io_read(video_in:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:io_read(x_top_left:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:io_read(width:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:io_read(y_top_left:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:io_read(height:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:if:io_write(white_or_not:rsc.d)#1 CSTEPS_FROM {{.. == 2}}
directive set /get_square_intensity/core/main/if#1:io_write(last_pixel:rsc.d)#1 CSTEPS_FROM {{.. == 1}}

# Real operation constraints
directive set /get_square_intensity/core/main/if:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:acc#4 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#10 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#12 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#11 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#14 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#13 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#15 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#2 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#17 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#16 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#3 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#20 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#22 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#26 CSTEPS_FROM {{.. == 2}}
directive set /get_square_intensity/core/main/acc#18 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#19 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#21 CSTEPS_FROM {{.. == 2}}
directive set /get_square_intensity/core/main/acc#23 CSTEPS_FROM {{.. == 2}}
directive set /get_square_intensity/core/main/acc#27 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#25 CSTEPS_FROM {{.. == 2}}
directive set /get_square_intensity/core/main/if:acc CSTEPS_FROM {{.. == 2}}
directive set /get_square_intensity/core/main/if#1:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#1:acc CSTEPS_FROM {{.. == 1}}
