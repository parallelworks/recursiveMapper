recursiveMapper
===============

As workflows become more and more complex, the file structure also becomes more complex. This `mapper.sh` script is created to help map an entire folder and its sub-folder(s).

Usage
-----

``` example
file[] dir1 <Ext;exec="mapper.sh",root="dir1">;
```

Only change the dir1 to the folder to be mapped.

An example workflow `extMapper.swift` is provided for testing.

To restrict the files mapped by this tool, an additional parameter `pattern` can be used to specify an extended glob pattern. For example, with the following option, only txt files would be mapped:

``` example
file[] dir1 <Ext; exec="mapper.sh", root="dir1", pattern ="*.txt">;
```
