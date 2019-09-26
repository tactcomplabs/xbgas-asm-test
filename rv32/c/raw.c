/*
 *
 * _RAW_C_
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
  uint64_t S_U64 = 0x01ull;
  uint32_t S_U32 = 0x1ul;
  uint16_t S_U16 = 0x01;
  uint8_t S_U8   = 1;

  /* pointers to source data */
  uint64_t *P_U64 = &S_U64;
  uint32_t *P_U32 = &S_U32;
  uint16_t *P_U16 = &S_U16;
  uint8_t *P_U8   = &S_U8;

  /* destination data */
  uint64_t U64 = 0x00ull;
  uint32_t U32 = 0x0ul;
  uint16_t U16 = 0x00;
  uint8_t U8   = 0;


  /* raw load/stores */
  asm("erlw a5,a6,e10");
  asm("erlh a5,a6,e10");
  asm("erlb a5,a6,e10");
  asm("erlhu a5,a6,e10");
  asm("erlbu a5,a6,e10");
  asm("ersw a5,a5,e10");
  asm("ersh a5,a5,e10");
  asm("ersb a5,a5,e10");
  asm("erse e10,a5,e11");
  asm("eaddi a5,e10,0");
  asm("eaddie e10,a5,0");
  asm("eaddix e21,e10,0");

  return 0;
}
