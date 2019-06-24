/*
 *
 * _STORE_C_
 *
 * Copyright (C) 2018 Tactical Computing Laboratories, LLC
 * All Rights Reserved
 * contact@tactcomplabs.com
 *
 */

#include <stdio.h>
#include <stdint.h>

int main(int argc, char **argv ){

  /* destination data */
  uint64_t S_U128 = 0x01ull;
  uint64_t S_U64 = 0x01ull;
  uint32_t S_U32 = 0x1ul;
  uint16_t S_U16 = 0x01;
  uint8_t S_U8   = 1;

  /* pointers to source data */
  uint64_t *P_U128 = &S_U128;
  uint64_t *P_U64 = &S_U64;
  uint32_t *P_U32 = &S_U32;
  uint16_t *P_U16 = &S_U16;
  uint8_t *P_U8   = &S_U8;

  /* source data */
  uint64_t U128 = 0x02ul;
  uint64_t U64 = 0x01ul;
  uint32_t U32 = 0x02ul;
  uint16_t U16 = 0x02ul;
  uint8_t U8   = 0x02ul;

  /* ESW */
  asm volatile
  (
    " esw %[x],0(%[z])\n\t"
		:
    : [z] "r" (P_U32),  [x] "r" (U32)
  );

  /* ESH */
  asm volatile
  (
    " esh %[x],0(%[z])\n\t"
		:
    : [z] "r" (P_U16), [x] "r" (U16)
  );

  /* ESB */
  asm volatile
  (
    " esb %[x],0(%[z])\n\t"
		:
    : [z] "r" (P_U8),  [x] "r" (U8)
  );

  return 0;
}
