
# Loop constraints
directive set /get_square_intensity/core/main CSTEPS_FROM {{. == 2}}

# IO operation constraints
directive set /get_square_intensity/core/main/if:else:io_write(white_or_not:rsc.d)#1 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/io_read(height:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/io_read(vga_xy:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/io_read(y_top_left:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#1:io_write(last_pixel:rsc.d)#1 CSTEPS_FROM {{.. == 1}}

# Real operation constraints
directive set /get_square_intensity/core/main/if#1:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /get_square_intensity/core/main/if#1:acc CSTEPS_FROM {{.. == 1}}
