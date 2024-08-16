# fastq_cleaner

From the original repo:
```
A multi-threaded (~180% cpu for compressed files when pairs are input) tool to remove filtered fastq reads.

The tool looks for filtered reads in either read of a pair, and will then remove both reads of the pair.

Memory usage is tunable. Approximately 250M RAM per 100,000 read pairs.

cwl included.
```

## Installation

To build:
```
chmod +x
./build.sh
``` 