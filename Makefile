
demo1:
	flume-ng agent --conf conf --conf-file conf/demo1.conf --name agent -Dflume.root.logger=INFO,console

demo2:
	flume-ng agent --conf conf --conf-file conf/demo2.conf --name agent -Dflume.root.logger=INFO,console

clean_logs:
	rm -r logs/*
