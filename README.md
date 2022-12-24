# command-executor
A C++ header-only library for executing and capturing output of system shell commands.

## Usage
```c++
#include "Command.hpp"
#include <iostream>

int main() {
  CommandResult result = Command::exec("ls -a");
  std::cout << "status: " << result.exitstatus << '\n'
            << "coutput: " << result.output << '\n';
}
```

## Compilation
Since this is a header-only library, we can simply include it in out code and it doesnt required any futher configuration.