#include <stdio.h>
#include "sancus_support/sm_io.h"
#include "sancus_support/sancus_step.h"

#include "ifthenlooplooptail.h"

asm(".section __interrupt_vector_10,\"ax\",@progbits \n\t"
    ".word timerA_isr_entry2                         \n\t");

void attack(void)
{
  __ss_print_latency();
}

int main(void)
{
  msp430_io_init();
  __ss_init();

  sancus_enable(&ifthenlooplooptail);

  __ss_mount();
  ifthenlooplooptail_enter(12, 14);

  __ss_mount();
  ifthenlooplooptail_enter(10, 12);

  __ss_mount();
  ifthenlooplooptail_enter(14, 12);

  EXIT();

  return 0;
}

SANCUS_STEP_ISR_ENTRY2(attack, __ss_end);