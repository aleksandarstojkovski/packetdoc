#pragma.examples gameservice/server 0047
#pragma.parseAs GameserviceServerPacket
---
meta:
  id: gameservice_server_0047_room_list
  title: GameService Server Room List
  encoding: ASCII
  endian: le
  imports:
    - ../../common/pstring

doc: |
  This packet lists all rooms currently present (open or closed) on a given
  sub-server.
  
  This packet is sent periodically by the server without prompting.

seq:
  - id: room_count
    type: u2
  - id: unknown_a
    size: 2
  - id: room_list
    type: room
    repeat: expr
    repeat-expr: room_count

types:
  room:
    seq:
      - id: room_name
        type: strz
        size: 64
      - id: is_public
        type: u1
        doc: 1 is public, 0 is private requiring password
      - id: unknown_b
        size: 2
      - id: user_max
        type: u1
        doc: Upper user limit of room.
      - id: user_count
        type: u1
        doc: Current user count of room.
      - id: unknown_c
        size: 18
      - id: hole_number
        type: u1
        doc: Current hole number for chat rooms ?
      - id: unknown_d
        size: 1
      - id: room_number
        type: u2
      - id: unknown_e
        size: 127
