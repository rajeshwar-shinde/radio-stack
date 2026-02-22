sudo openocd -f interface/stlink.cfg -c "transport select hla_swd" -c "adapter speed 100" -f target/nrf51.cfg -c "init; halt; nrf51 mass_erase; reset"
