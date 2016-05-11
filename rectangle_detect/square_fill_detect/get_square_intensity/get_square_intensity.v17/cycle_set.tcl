
# Loop constraints
directive set /get_square_intensity/core/main CSTEPS_FROM {{. == 2}}

# IO operation constraints
directive set /get_square_intensity/core/main/io_read(vga_xy:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/io_read(video_in:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:io_read(x_top_left:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:io_read(width:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:io_read(y_top_left:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:io_read(height:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:if:io_write(white_or_not:rsc.d)#1 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#1:io_write(last_pixel:rsc.d)#1 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/io_write(video_out:rsc.d) CSTEPS_FROM {{.. == 1}}

# Real operation constraints
directive set /get_square_intensity/core/main/if:acc CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:acc#4 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#7 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc#6 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/acc CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:and#3 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:or CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if:or#1 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#1:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#1:acc CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/mux CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/mux#1 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/mux#2 CSTEPS_FROM {{.. == 1}}
