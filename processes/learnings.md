1. Actor is a process
2. Achieve concurrency by spawning many processes
3. Each process performs specific task

If each task in a set of tasks is not dependent on any other task finishing before being perform, we can run multiple processes to perform each task concurrently.

Each task should be ran in it's own process.

Processes are created through spawning.

`mix new metex` # create a new project
`mix deps.get` # installs dependencies for the project
`iex -S mix` # start the program
