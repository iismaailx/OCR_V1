#!/usr/bin/python3
import time
import serial

print("UART Demonstration Program")
print("NVIDIA Jetson Nano Developer Kit")


serial_port = serial.Serial(
    port="/dev/ttyTHS1",
    baudrate=115200,
    bytesize=serial.EIGHTBITS,
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_ONE,
)
# Wait a second to let the port initialize
time.sleep(1)

try:
    # Send a simple header
    # serial_port.write("Hallo\r\n".encode())
    while True:
        if serial_port.inWaiting() > 0:
            data = serial_port.read().decode()
            if data == '1' :
                print('capture!')


except KeyboardInterrupt:
    print("Exiting Program")

except Exception as exception_error:
    print("Error occurred. Exiting Program")
    print("Error: " + str(exception_error))

finally:
    serial_port.close()
    pass
