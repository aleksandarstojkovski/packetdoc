#pragma.template metapacket
---
meta:
  id: loginservice_client_packet
  title: LoginService Client Packets
  encoding: ASCII
  endian: le
  imports:
    - '0001'

seq:
  - id: packet_id
    type: u2
  - id: data
    type:
      switch-on: packet_id
      cases:
        0x0001: loginservice_client_0001_login