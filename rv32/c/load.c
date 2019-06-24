/*
 *
 * _LOAD_C_
 *
 * Copyright (C) 2018 Tactical Computing Laboratories, LLC
 * All Rights Reserved
 * contact@tactcomplabs.com
 *
 */

#include <stdio.h>
#include <stdint.h>

int main(int argc, char **argv ){

  /* source data */
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

  /* destination data */
  uint64_t U128 = 0x00ull;
  uint64_t U64 = 0x00ull;
  uint32_t U32 = 0x0ul;
  uint16_t U16 = 0x00;
  uint8_t U8   = 0;

  /* ELW */
  asm volatile
  (
    " elw %[z],0(%[x])\n\t"
    : [z] "=r" (U32)
    : [x] "r" (P_U32)
  );

  /* ELH */
  asm volatile
  (
    " elh %[z],0(%[x])\n\t"
    : [z] "=r" (U16)
    : [x] "r" (P_U16)
  );

  /* ELB */
  asm volatile
  (
    " elb %[z],0(%[x])\n\t"
    : [z] "=r" (U8)
    : [x] "r" (P_U8)
  );

  /* ELHU */
  asm volatile
  (
    " elhu %[z],0(%[x])\n\t"
    : [z] "=r" (U16)
    : [x] "r" (P_U16)
  );

  /* ELBU */
  asm volatile
  (
    " elbu %[z],0(%[x])\n\t"
    : [z] "=r" (U8)
    : [x] "r" (P_U8)
  );

  return 0;
}
