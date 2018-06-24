.PHONY: clean_logs

demo1:
	flume-ng agent --conf conf --conf-file conf/demo1.conf --name agent -Dflume.root.logger=INFO,console

demo2:
	flume-ng agent --conf conf --conf-file conf/demo2.conf --name agent -Dflume.root.logger=INFO,console

demo3:
	flume-ng agent --conf conf --conf-file conf/demo3.conf --name agent -Dflume.root.logger=INFO,console -DpropertiesImplementation=org.apache.flume.node.EnvVarResolverProperties

clean_logs:
	cd logs && ls . | grep -v "dummy.txt" | xargs rm --
