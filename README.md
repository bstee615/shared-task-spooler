# Shared queue

This shared queue uses task-spooler, see docs here (https://manpages.ubuntu.com/manpages/xenial/man1/tsp.1.html).
This will help us to run jobs without clashing on GPU usage.

Install the tool by adding this directory to your PATH. You can add this to your `~/.bashrc` to make it permanent.

`export PATH="$PATH:/opt/shared-queue"`

## Main command: `q` (queue)
`q` is an alias for `tsp` (task-spooler) with some extra things like auto-labeling with the username of the invoker.

Common commands:

- Run `q` to view all jobs. Run `q | grep -e ID -e $USER` to see just your jobs.
- Run `q <command>` to queue a job.
- Run `q -r <job-id>` to remove a job.
- Run `q -k <job-id>` to kill a job.
- Please don't kill or remove other people's jobs without permission, even when they're complete - they may want to see the output.
- Run `q -u <job-id>` to move a job to the front of the queue.
- Run `q -U <job-id 1>-<job-id 2>` (very specific syntax) to swap two jobs in the queue.
  Example: `q -U 1-10` swaps the order of jobs 1 and 10.

# Convenience commands
- `qm` (queue mine) is a convenience tool to list all jobs submitted by the current user.
- `ql` (queue live) is a convenience tool to list all jobs submitted by the current user which are not finished yet (queued or running).
- `qh` (queue head) is a convenience tool to list the first few jobs submitted by the current user.
- `qr` (queue remove) is a helper to remove multiple jobs at once.
Usage: `qr <job-id-1> <job-id-2> .. <job-id-n>`

