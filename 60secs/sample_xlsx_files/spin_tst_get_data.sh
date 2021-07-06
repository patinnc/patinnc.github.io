#!/usr/bin/env bash

P=/root/output/tst_spn_v11/spn_frq; ./install_and_run_on_cloud.sh -l hosts_b19a_qct.lst -N 0 -C "mkdir -p $P; /root/60secs/do_perf3.sh -p $P -F -I 1 -x /root/60secs/extras/spin.x -X ' -w freq_sml -t 10 ' > $P/spin.txt " -r shell
P=/root/output/tst_spn_v11/spn_bw; ./install_and_run_on_cloud.sh -l hosts_b19a_qct.lst -N 0 -C "mkdir -p $P; /root/60secs/do_perf3.sh -p $P -F -I 1 -x /root/60secs/extras/spin.x -X ' -w mem_bw -t 10 -s 100m -b 64 ' > $P/spin.txt " -r command
P=/root/output/tst_spn_v11/spn_bw_L2; ./install_and_run_on_cloud.sh -l hosts_b19a_qct.lst -N 0 -C "mkdir -p $P; /root/60secs/do_perf3.sh -p $P -F -I 1 -x /root/60secs/extras/spin.x -X ' -w mem_bw -t 10 -s 32k -b 64 ' > $P/spin.txt " -r command
P=/root/output/tst_spn_v11; ./install_and_run_on_cloud.sh -l hosts_b19a_qct.lst -N 0 -p $P  -r fetch_untar -a archive_tst_spn_v11
tar czf archive_tst_spn_v11.tar.gz archive_tst_spn_v11
