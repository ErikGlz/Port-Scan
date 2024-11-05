# Port-Scan

This Bash script is a simple port scanner that checks the open ports on the local machine (127.0.0.1) by attempting to establish a TCP connection on each port from 1 to 65535. The script uses concurrency to speed up the scanning process and displays any open ports.

## Features

- **Local Port Scanning**: Scans all 65,535 ports on the localhost (`127.0.0.1`).
- **Concurrency**: Utilizes background processes to improve scan speed.
- **Signal Handling**: Captures `Ctrl+C` to exit gracefully, displaying a custom exit message.
- **Cursor Control**: Hides the cursor during the scan and restores it afterward for a clean output.

## Requirements

This script uses basic Bash commands and does not require any external dependencies.

## Usage

To run the script, simply execute it from the terminal:

```bash
./port_scanner.sh
```

## Example Output

```
[+] 22 - OPEN
[+] 80 - OPEN
[+] 443 - OPEN
...
```

## How It Works

- **Port Looping**: The script loops through all ports from 1 to 65535.
- **TCP Connection Check**: For each port, it attempts to open a TCP connection. If successful, the port is considered open.
- **Concurrency**: Each port check runs in a background process, allowing multiple ports to be scanned simultaneously.
- **Signal Handling**: When `Ctrl+C` is pressed, the `ctrl_c` function is triggered, which exits the script and restores the cursor visibility.

## Notes

- This script is designed for educational purposes and quick local port checks. For detailed scanning and network analysis, consider using specialized tools like `nmap`.
- Warning: Scanning ports on devices you do not own or without permission may be illegal in some jurisdictions.
