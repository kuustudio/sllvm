sllvm_pm_loop_text_start = .;
*(.sllvm.text.dispatch.loop)  /* Make sure the dispatcher is put first */
*(.sllvm.text.loop)
*(.sllvm.text.loop.*)         /* Internalized runtime functions */
sllvm_pm_loop_text_end = .;

sllvm_pm_sancus_step_text_start = .;
*(.sllvm.text.dispatch.sancus_step)  /* Make sure the dispatcher is put first */
*(.sllvm.text.sancus_step)
sllvm_pm_sancus_step_text_end = .;
