working_directory "/home/soporte/sisolc"
pid "/home/soporte/sisolc/tmp/pids/unicorn.pid"
stderr_path "/home/soporte/sisolc/log/unicorn.log"
stdout_path "/home/soporte/sisolc/log/unicorn.log"

listen "/tmp/unicorn.sisolc.sock", :backlog=>64
#listen "0.0.0.0:8443", :tcp_nopush => true
worker_processes 2
timeout 300


