
# Loop constraints
directive set /sobel/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /sobel/core/core:rlp/main CSTEPS_FROM {{. == 2} {.. == 0}}

# IO operation constraints
directive set /sobel/core/core:rlp/main/FRAME:io_read(vin:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:io_write(vout:rsc.d) CSTEPS_FROM {{.. == 1}}

# Real operation constraints
directive set /sobel/core/core:rlp/main/ACC1:acc#37 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC1:acc#36 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC1:acc#41 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC1:acc#35 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC1:acc#34 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC1:acc#40 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC1:acc#43 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC1:acc#39 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC1:acc#38 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC1:acc#42 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC1:acc CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#11 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#13 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#12 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#14 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/acc CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#16 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#15 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/acc#3 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:mul#3 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#23 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#17 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#19 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#18 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#20 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#21 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#22 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#30 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#24 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#26 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#25 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#27 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#28 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#29 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:or CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:or#3 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:and CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc CSTEPS_FROM {{.. == 1}}
