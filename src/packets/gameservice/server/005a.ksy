#pragma.examples gameservice/server 005a
#pragma.parseAs GameserviceServerPacket
---
meta:
  id: gameservice_server_005a_user_use_consumable_item_announce
  title: GameService Server User Use Consumable Item Announce
  encoding: ASCII
  endian: le
  imports:
    - ../../common/pstring

doc: |
  This packet relays a user's use of a consumable item.
  
  This is a response to [GameService Client 0017 User Use Consumable Item](/packets/gameservice/client/0017.ksy).

seq:
  - id: item_id
    type: u4
    doc: From pangya_xx.iff/Item.iff. The item ID of the used consumable.
  - id: unknown_a
    type: u4
  - id: connection_id
    type: u4
    doc: The connection ID of the user who used the consumable item.
