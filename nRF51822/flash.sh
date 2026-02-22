#sudo openocd -f interface/stlink.cfg -c "transport select hla_swd" -f target/nrf51.cfg -c "init; reset halt; nrf51 mass_erase; program /home/rajeshwar/tmp/upload/radio-stack/nRF51822/ble_app_uart_pca10028_s130.hex verify reset; exit"
#
printf "reset halt\nnrf51 mass_erase\nprogram /home/rajeshwar/tmp/upload/radio-stack/nRF51822/ble_app_uart_pca10028_s130.hex verify reset\nexit\n" | nc -w 1 localhost 4444
