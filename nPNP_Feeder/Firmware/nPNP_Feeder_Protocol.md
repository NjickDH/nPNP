# nPNP Feeder protocol specification

## Packet format
Every packet to be sent to the feeder is of the following format:

    | Name:        | Feeder number           | Length                      | Content               |
    |--------------|-------------------------|-----------------------------|-----------------------|
    | Description  | Feeder to be controlled | length of the entire packet | Content of the packet |
    | Byte length: | 1                       | 1                           | 0-98                  |

## Content format
The content space will be used to send commands to the feeder. The content of the packets has to be be configured using the following commands:

### Self configure (0x01)
Self configures the IR proximity sensor upper threshold. This threshold is critical for the encoder interrupt triggers.

    | Name:        | Self configure        |
    |--------------|-----------------------|
    | Byte value:  | 0x01                  |

### Move tape (0x02)
Move the tape x ammount of steps (-255 <= x <= 255).

    | Name:       | Move tape | Sign (1 = negative) | Value            |
    |-------------|-----------|---------------------|------------------|
    | Byte value: | 0x02      | 0 or 1              | -255 <= x <= 255 |

### Examples
Example of packet to be sent to let feeder 1 self configure:

    | Byte number: | 0             | 1      | 2                       |
    |--------------|---------------|--------|-------------------------|
    | Description: | Feeder number | Length | Self configure          |
    | Byte value:  | 0x01          | 0x03   | 0x01                    |

Example to move feeder 1 four steps forwards:

    | Byte number: | 0             | 1      | 2         | 3         | 4         |
    |--------------|---------------|--------|-----------|-----------|-----------|
    | Description: | Feeder number | Length | Move tape | Sign      | Value     |
    | Byte value:  | 0x01          | 0x03   | 0x02      | 0         | 4         |