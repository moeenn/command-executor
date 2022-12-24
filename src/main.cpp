#include "Command.hpp"
#include <iostream>

int main() {
  CommandResult result = Command::exec("ls -a");
  std::cout << "status: " << result.exitstatus << '\n'
            << "output: " << result.output << '\n';
}