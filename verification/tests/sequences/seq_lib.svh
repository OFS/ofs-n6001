//Copyright (C) 2021 Intel Corporation
//SPDX-License-Identifier: MIT
`ifndef SEQ_LIB_SVH
`define SEQ_LIB_SVH

`include "pcie_hip_defines.svh"
`include "pcie_device_report_catcher.sv"
`include "vip_seq/enumerate_seq.sv"
`include "pcie_vip_seq.svh"
`include "pcie_device_sequence_library.sv"
`include "axi_vip_seq.sv"
`include "config_seq.svh"
`include "base_seq.svh"
`include "mmio_seq.svh"
`include "fme_csr_seq.svh"
`include "fme_csr_stress_seq.svh"
`include "he_hssi_csr_seq.svh"
`include "he_hssi_rw_seq.svh"
`include "he_mem_csr_seq.svh"
`include "he_lpbk_csr_seq.svh"
`include "dfh_walking_seq.svh"
`include "he_lpbk_seq.svh"
`include "he_mem_lpbk_seq.svh"
`include "he_hssi_tx_lpbk.svh"
`include "he_hssi_tx_err_seq.svh"
`include "he_hssi_rx_lpbk.svh"
`include "he_hssi_axis_rx_lpbk_seq.svh"

`include "qsfp_csr_seq.svh"
`include "qsfp_csr_stress_seq.svh"
`include "hssi_ss_seq.svh"
`include "hssi_ss_rw_seq.svh"
`include "pmci_qsfp_csr_seq.svh"
`include "pmci_fme_csr_seq.svh"
`include "he_mem_rd_seq.svh"
`include "he_mem_wr_seq.svh"
`include "he_mem_flr_rst_seq.svh"
`include "he_mem_lpbk_reqlen1_seq.svh"
`include "he_mem_lpbk_reqlen2_seq.svh"
`include "he_mem_lpbk_reqlen4_seq.svh"
`include "he_mem_lpbk_reqlen8_seq.svh"
`include "he_mem_lpbk_reqlen16_seq.svh"
`include "he_mem_lpbk_long_seq.svh"
`include "he_mem_lpbk_long_rst_seq.svh"
`include "he_mem_thruput_seq.svh"
`include "mini_smoke_seq.svh"
`include "mmio_stress_seq.svh"
`include "mmio_stress_nonblocking_seq.svh"
`include "he_random_seq.svh"
`include "he_random_stress_seq.svh"
`include "he_lpbk_reqlen1_seq.svh"
`include "he_lpbk_reqlen2_seq.svh"
`include "he_lpbk_reqlen4_seq.svh"
`include "he_lpbk_reqlen8_seq.svh"
`include "he_lpbk_reqlen16_seq.svh"
`include "helb_rd_1cl_seq.svh"
`include "helb_rd_2cl_seq.svh"
`include "helb_rd_4cl_seq.svh"
`include "helb_wr_1cl_seq.svh"
`include "helb_wr_2cl_seq.svh"
`include "helb_wr_4cl_seq.svh"
`include "helb_thruput_1cl_seq.svh"
`include "helb_thruput_2cl_seq.svh"
`include "helb_thruput_4cl_seq.svh"
`include "pmci_pciess_csr_seq.svh"
`include "mmio_unimp_seq.svh"

`include "pmci_csr_seq.svh"
`include "mmio_flr_pf_vf_seq.svh"
`include "he_lpbk_thruput_seq.svh"
`include "he_lpbk_wr_seq.svh"
`include "he_lpbk_rd_seq.svh"
`include "he_lpbk_long_seq.svh"
`include "he_lpbk_cont_seq.svh"
`include "he_lpbk_wr_cont_seq.svh"
`include "he_lpbk_thruput_contmode_seq.svh"
`include "he_lpbk_rd_cont_seq.svh"
`include "he_lpbk_long_rst_seq.svh"
`include "he_lpbk_flr_rst_seq.svh"
`include "mmio_pcie_max_seq.svh"
`include "afu_stress_seq.svh"
`include "port_gasket_csr_seq.svh"
`include "mem_tg_csr_seq.svh"
`include "emif_csr_seq.svh"

`ifndef NO_MSIX

`ifdef INCLUDE_UART
    `include "uart_intr_seq.svh"
`endif
`include "fme_intr_seq.svh"
`include "fme_err_intr_seq.svh"
`include "fme_multi_err_intr_seq.svh"
`include "fme_ras_no_fat_err_seq.svh"
`include "fme_ras_cat_fat_err_seq.svh"
`include "he_mem_user_intr_seq.svh"
`include "he_mem_multi_user_intr_seq.svh"
`include "he_lpbk_user_intr_seq.svh"
`include "he_lpbk_multi_user_intr_seq.svh"
`include "mix_intr_seq.svh"
`endif

`include "he_mem_cont_seq.svh"
`include "he_mem_wr_cont_seq.svh"
`include "he_mem_thruput_contmode_seq.svh"
`include "he_mem_rd_cont_seq.svh"
`include "pcie_pmci_mctp_vdm_seq.svh"
`include "pcie_pmci_mctp_multi_vdm_seq.svh"
`include "pmci_pcie_mctp_vdm_seq.svh"
`include "pmci_pcie_mctp_multi_vdm_seq.svh"
`include "vdm_err_seq.svh"
`include "bar_32b_seq.svh"
`include "bar_64b_seq.svh"
`include "protocol_checker_csr_seq.svh"
`include "malformedtlp_seq.svh"
`include "malformedtlp_pcie_rst_seq.svh"
`include "MaxTagError_seq.svh"
`include "TxMWrDataPayloadOverrun_seq.svh"
`include "TxMWrInsufficientData_seq.svh"
`include "UnexpMMIORspErr_seq.svh"
`include "MMIODataPayloadOverrun_seq.svh"
`include "MMIOInsufficientData_seq.svh"
`include "MMIOTimedOut_seq.svh"
`include "he_mem_thruput_contmode_directed_seq.svh"
`include "pcie_csr_seq.svh"
`include "mem_tg_traffic_gen_seq.svh"

`ifdef FIM_B
   `include "fim_b_seq_lib.svh"
`endif

`endif // SEQ_LIB_SVH