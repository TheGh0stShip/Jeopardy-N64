# Survey: JEOPARDY! (NJOE)

- **Program**: static image, main segment 0x80000400..0x80092A08 (rom); 806 functions, 243 named from the SDK
- **ROM understood**: 44.2 % by content, plus 32.8 % only referenced by loader tables; 965,632 bytes unknown in 13 ranges
- **Next**: investigate: text end: functions 0x80092A04, datamap 0x8004DDF8 (unexplained)
- **Next**: ROM 0x24E1B0..0x2C9BA0 (0x7b9f0 bytes) is unclassified; 6.7 bits/byte, zlib ratio 0.79: raw media or lightly packed data (audio, textures, animation)
- **Next**: ROM 0x3079D8..0x3317EF (0x29e17 bytes) is unclassified; 5.1 bits/byte, zlib ratio 0.18: raw structured data (tables, text, level data)

## ROM

- **title**: JEOPARDY!
- **game_code**: NJOE
- **version**: 0
- **sha1**: c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed
- **size**: 4194304
- **byte_order**: z64
- **cic**: 6102
- **checksum_ok**: True
- **entry_header**: 0x80000400
- **entry**: 0x80000400
- **crc**: 69256460/B9A3F586

## Program image

- method: static; entry 0x80000400; hand-over 0x80035F50; stack 0x803FFFF0

| vram | end | size | kind | ROM | codec | evidence |
|---|---|---|---|---|---|---|
| 0x80000400 | 0x80092A08 | 0x92608 | rom | 0x1000..0x93608 | - | IPL3 copy |
| 0x80092A08 | 0x80156F68 | 0xC4560 | bss | - | - | entry routine clear loop |

Offsets below are ROM offsets.

## Functions

- **text**: 0x80000400..0x80092A04
- **text_size**: 599556
- **data_start**: 0x80092A04
- **image_end**: 0x80092A08
- **functions**: 806
- **kinds**: {'asm': 43, 'O0': 440, 'c': 213, 'leaf': 79, 'stub': 31}
- **seeds**: {'entry': 1, 'unreferenced': 121, 'pointer': 102, 'call': 581, 'branch': 1}
- **jump_tables**: 36
- **jump_table_entries**: 923
- **in_text_data**: ['0x8000043C+0x21FC', '0x8003672C+0x38', '0x80036788+0x3698', '0x8004DE00+0x28378']
- **stray_words**: 28
- **findings**: {'epilogue_reattached': 1, 'shared_unit': 2, 'in_text_data': 4, 'stray_words': 28, 'falls_through': 4, 'branch_to_entry': 3, 'cross_branch': 3, 'interior_alias': 1, 'text_extended': 1}

## Data map

- **image**: 0x80000400..0x80092A08 (ROM 0x1000..0x93608)
- **bss**: 0x80092A08..0x80156F68
- **sections**: ['.text 0x80000400..0x8000043C (0x3C)', '.rodata 0x8000043C..0x80002638 (0x21FC)', '.text 0x80002638..0x8004DDF8 (0x4B7C0)', '.data 0x8004DDF8..0x80092A08 (0x44C10)']
- **section_bytes**: {'.text': '0x4b7fc', '.rodata': '0x21fc', '.data': '0x44c10'}
- **functions**: 782
- **xref_sites**: 3247
- **data_addresses**: 919
- **objects**: 812
- **object_types**: {'string': 81, 'jtbl': 40, 'f32': 140, 'words': 501, 'f64': 28, 'pointers': 22}
- **single_owner_objects**: 617
- **shared_objects**: 194
- **jump_tables**: 40
- **strings**: 81

## SDK

- **functions_named**: 243
- **high_confidence**: 228
- **sdk_version**: ['2.0D/2.0E/2.0F/2.0G/2.0H:libultra_rom', '2.0D/2.0E/2.0F/2.0G/2.0H:libultra', '2.0I:libultra_rom']
- **library_compiler**: {'ido': 223}
- **game_compiler**: kmc
- **game_compiler_share**: {'kmc': 0.894, 'ido': 0.106}
- **microcode**: ['? 2.0 @0x71B10', '? 2.0 @0x72310']
- **audio**: {'ALBankFile': 1}
- **libmus**: []

## Audio

- **counts**: {'containers': 1, 'samples': 60, 'midi': 0, 'intervals': 491}
- **bytes**: {'payload': 1110340, 'padding': 898, 'container': 11874}

## Graphics

- **family**: f3d
- **family_from**: pool bytes, then lists decoded
- **display_lists**: 327
- **pools**: ['0x2C9BA0..0x2CECF8 (34 blobs)', '0x2CED00..0x2CF478 (59 blobs)', '0x2CF488..0x2CF530 (6 blobs)', '0x2D1840..0x2D9558 (88 blobs)', '0x2E0810..0x2E1560 (5 blobs)', '0x2E29D8..0x2E36F0 (5 blobs)', '0x2F8368..0x2FA4B0 (50 blobs)', '0x3069E8..0x3079D8 (18 blobs)', '0x35DBA8..0x35DF68 (9 blobs)', '0x369740..0x36CED8 (17 blobs)', '0x37B7C8..0x37DE98 (18 blobs)', '0x38DEF8..0x390A80 (14 blobs)']
- **blobs**: 323
- **textured_blobs**: 156
- **pool_bytes**: 110560
- **standalone_lists**: 5

## Compressed streams and loader ranges

- **streams**: {}
- **streams_with_loader**: 0
- **loader_ranges**: {'records': 4, 'call': 1, 'size': 2}
- **dma_wrappers**: []
- **ledger_bytes**: {'-': 2754820, 'loader_range': 1439484}
- **unknown_bytes**: 2750720

## ROM ledger

- complete: **False** (unknown bytes: 965,632 in 13 ranges)

| class | bytes |
|---|---|
| referenced | 1,375,666 |
| payload | 1,237,308 |
| unknown | 965,632 |
| code | 309,244 |
| data | 290,316 |
| container | 11,874 |
| rom_metadata | 4,096 |
| padding | 168 |

| category | bytes |
|---|---|
| loader_range | 1,375,666 |
| audio | 1,122,214 |
| - | 965,800 |
| program | 599,560 |
| graphics | 126,968 |
| rom_metadata | 4,096 |

Largest unknown ranges:

- 0x24E1B0..0x2C9BA0 (0x7b9f0)
- 0x3079D8..0x3317EF (0x29e17)
- 0x2E36F0..0x2F8368 (0x14c78)
- 0x3F1533..0x400000 (0xeacd)
- 0x2FA4B0..0x3069E8 (0xc538)
- 0x2DA5C0..0x2E0810 (0x6250)
- 0x2301AC..0x2361B0 (0x6004)
- 0x2421B0..0x2481B0 (0x6000)
- 0x2CF530..0x2D1840 (0x2310)
- 0x2E1560..0x2E29D8 (0x1478)
- 0x2D9558..0x2DA2E0 (0xd88)
- 0x2CF478..0x2CF488 (0x10)

## Cross-checks

- text end: functions 0x80092A04, datamap 0x8004DDF8 (unexplained)
- functions recovered code past an embedded block: 3 call targets past 0x8004DDF4; text extended to 0x80092A04

## Next steps

Most bytes (or failures) first.

1. investigate: text end: functions 0x80092A04, datamap 0x8004DDF8 (unexplained)
2. ROM 0x24E1B0..0x2C9BA0 (0x7b9f0 bytes) is unclassified; 6.7 bits/byte, zlib ratio 0.79: raw media or lightly packed data (audio, textures, animation)
3. ROM 0x3079D8..0x3317EF (0x29e17 bytes) is unclassified; 5.1 bits/byte, zlib ratio 0.18: raw structured data (tables, text, level data)
4. ROM 0x2E36F0..0x2F8368 (0x14c78 bytes) is unclassified; 3.6 bits/byte, zlib ratio 0.19: raw structured data (tables, text, level data)
5. ROM 0x3F1533..0x400000 (0xeacd bytes) is unclassified; 1.4 bits/byte, zlib ratio 0.11: raw structured data (tables, text, level data)
6. ROM 0x2FA4B0..0x3069E8 (0xc538 bytes) is unclassified; 3.8 bits/byte, zlib ratio 0.19: raw structured data (tables, text, level data)
7. ROM 0x2DA5C0..0x2E0810 (0x6250 bytes) is unclassified; 5.2 bits/byte, zlib ratio 0.39: raw structured data (tables, text, level data)
8. review function boundaries flagged in functions.toml: 4 falls_through, 3 cross_branch, 1 interior_alias

## Timings (s)

program_image 1.46, functions 1.12, datamap 0.25, sdk 1.29, audio 0.06, gfx 0.35, assets 1.31, rsp_in_text 0.02, dev_records 0.08
