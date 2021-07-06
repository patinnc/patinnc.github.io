#!/usr/bin/env bash

echo "L2_bandwidth test" > archive_tst_spn_v11/tst_spn_v11/b19a_0/tst_spn_v11/spn_bw_L2/desc.txt
echo "frequency test"  > archive_tst_spn_v11/tst_spn_v11/b19a_0/tst_spn_v11/spn_frq/desc.txt
echo "memory bandwidth test" > archive_tst_spn_v11/tst_spn_v11/b19a_0/tst_spn_v11/spn_bw/desc.txt

CHART_USE_SCAT=",line_for_scatter"
CHART_SIZE_OPT=",chart_size{2,2}" # charts 2x bigger than below setting
CHART_SIZE_OPT=",chart_size{1,1,15,8}" # width_scale,height_scale[,y_units,x_units]

/Users/pfay1/repos/60secs/gen_xlsx.sh -j 0 -d archive_tst_spn_v11/tst_spn_v11/b19a_0/tst_spn_v11 -X xlsx/tst_spn_v11 -o "drop_summary,chart_sheet,all_charts_one_row${CHART_USE_SCAT},match_itp_muttley_interval,add_all_to_summary,sheet_for_file{muttley5.json=endpoints},sheet_limit{endpoints;cols_max;75},%cpu_like_top,sum_file_no_formula,$CHART_SIZE_OPT,xlsx_set_col_width{sum_all!C:C;30)" -S
