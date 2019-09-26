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
  uint64_t S64 = 1;
  uint32_t S_U32 = 1;
  uint16_t S_U16 = 1;
  uint8_t S_U8   = 1;

  /* pointers to source data */
  uint64_t *P_U64 = &S64;
  uint32_t *P_U32 = &S_U32;
  uint16_t *P_U16 = &S_U16;
  uint8_t *P_U8   = &S_U8;

  /* destination data */
  uint64_t U64 = 10;
  uint32_t U32 = 10;
  uint16_t U16 = 10;
  uint8_t  U8  = 10;

	/* Remote Node ID*/
	uint64_t EXT = 1;

	/*Max Value*/
	uint64_t MAX = 100;
	uint64_t MIN = 0;


  /* EADDI */
  //asm volatile 
	//(
	//	" eaddi %[z], 0, e10 \n\t"
	//	: [z] 	"=r"	(U64)
	//	: [e10] "r" 	(EXT) 
	//);

  /* EADDIE */
  asm volatile // Set the remote node id
	(
		" eaddie e12, %[x], 0 \n\t"
		: [e12] "=r" (U64)
		: [x] 	"r" 	(EXT) 
	);
	U64 = 10;
	//printf("Before Execution - Result Buffer = %lu, Local Var = %lu\n\n",U64, S64);
	
		

	/* EAMOADD.W */
  asm volatile
  (
    " eamoadd.w %[rd], %[rs2], %[rs1]  \n\t"
    : [rd] "=r" (U32)
    : [rs2] "r" (1),   [rs1] "r" (P_U32)
	);

	/* EAMOADD.D */
  asm volatile
  (
    " eamoadd.d %[rd], %[rs2], %[rs1]  \n\t"
    : [rd] "=r" (U64)
    : [rs2] "r" (1),   [rs1] "r" (P_U64)
  );


	/* EAMOMAX.W */
  asm volatile
  (
    " eamomax.w %[rd], %[rs2], %[rs1]  \n\t"
    : [rd] "=r" (U32)
    : [rs2] "r" (1),   [rs1] "r" (P_U32)
	);

	//printf("EAMOADD.D: RETURN VALUE = %lu, LOCAL VALUE = %lu\n\n", U64, S64 );
  /* EAMOMAX */
  asm volatile
  (
    " eamomax.d %[x], %[z], %[y] \n\t"
    : [x] "=r" (U64)
    : [y] "r" (P_U64), [z] "r" (MAX)
  );
	//printf("EAMOMAX.D: RETURN VALUE = %lu, LOCAL VALUE = %lu\n\n", U64, S64 );

  /* EAMOMIN */
  asm volatile
  (
    " eamomin.d %[x], %[z], %[y] \n\t"
    : [x] "=r" (U64)
    : [y] "r" (P_U64), [z] "r" (MIN)
  );

	printf("EAMOMIN.D: RETURN VALUE = %lu, LOCAL VALUE = %lu \n\n", U64, S64 );

  /* EAMOAND */
  asm volatile
  (
    " eamoand.d %[x], %[z], %[y] \n\t"
    : [x] "=r" (U64)
    : [y] "r" (P_U64), [z] "r" (S64)
  );


  /* EAMOXOR */
  asm volatile
  (
    " eamoxor.d %[x], %[z], %[y] \n\t"
    : [x] "=r" (U64)
    : [y] "r" (P_U64), [z] "r" (S64)
  );

	
  /* EAMOOR */
  asm volatile
  (
    " eamoor.d %[x], %[z], %[y] \n\t"
    : [x] "=r" (U64)
    : [y] "r" (P_U64), [z] "r" (S64)
  );


  /* EAMOCAS */
  asm volatile
  (
    " eamocas.d %[x], %[z], %[y] \n\t"
    : [x] "=r" (U64)
    : [y] "r" (P_U64), [z] "r" (S64)
  );
	


  return 0;
}
