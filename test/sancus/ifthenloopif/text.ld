sllvm_pm_ifthenloopif_text_start = .;
*(.sllvm.text.dispatch.ifthenloopif)  /* Make sure dispatcher is put first */
*(.sllvm.text.ifthenloopif)
sllvm_pm_ifthenloopif_text_end = .;

sllvm_pm_sancus_step_text_start = .;
*(.sllvm.text.dispatch.sancus_step)  /* Make sure the dispatcher is put first */
*(.sllvm.text.sancus_step)
sllvm_pm_sancus_step_text_end = .;
