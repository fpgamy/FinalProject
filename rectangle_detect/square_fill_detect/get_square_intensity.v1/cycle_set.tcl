
# Loop constraints
directive set /get_square_intensity/core/main CSTEPS_FROM {{. == 3}}

# IO operation constraints
directive set /get_square_intensity/core/main/io_read(vga_xy:rsc.d)#1 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/io_read(video_in:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#1:io_read(x_top_left:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#1:io_read(y_top_left:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#1:io_read(height:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#1:io_read(width:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#1:io_write(intensity_out:rsc.d)#1 CSTEPS_FROM {{.. == 2}}
directive set /get_square_intensity/core/main/io_write(last_pixel:rsc.d)#1 CSTEPS_FROM {{.. == 2}}

# Real operation constraints
directive set /get_square_intensity/core/main/if#1:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#1:acc CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/check_region:if:acc CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#1:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#1:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/check_region:if:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#9 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#11 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#10 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#13 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#12 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#14 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#2 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#16 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#15 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#3 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#19 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#21 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#25 CSTEPS_FROM {{.. == 2}}
directive set /get_square_intensity/core/main/acc#17 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#18 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#20 CSTEPS_FROM {{.. == 2}}
directive set /get_square_intensity/core/main/acc#22 CSTEPS_FROM {{.. == 2}}
directive set /get_square_intensity/core/main/acc#26 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#24 CSTEPS_FROM {{.. == 2}}
directive set /get_square_intensity/core/main/check_region:and CSTEPS_FROM {{.. == 2}}
directive set /get_square_intensity/core/main/if#2:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#2:acc CSTEPS_FROM {{.. == 1}}
