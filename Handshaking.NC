M98 P0 L4; Run the subroutine 4 times.

O0
M09; Turn off ACC1 (PNEUMATIC VISE) 
G00 X100 Y100; Move to Receiving Position
M26 H4; Transmit HIGH signal on OUTPUT 1
G25 H5; Wait for HIGH signal on INPUT 1
M08; Turn on ACC1 (PNEUMATIC VISE)
M25 H4; Transmit LOW signal on OUTPUT 1
G26 H5; Wait for LOW signal on INPUT 1

;run mill example
M03 S3000
G04 F4

G00 X100 Y100; Move to Receiving Position
M26 H4; Transmit HIGH signal on OUTPUT 1
G25 H5; Wait for HIGH signal on INPUT 1
M09; Turn off ACC1 (PNEUMATIC VISE)
M25 H4; Transmit LOW signal on OUTPUT 1
G26 H5; Wait for LOW signal on INPUT 1
M99; Return from subroutine

M02; Stop the program