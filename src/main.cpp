#include "Command.hpp"
#include <iostream>

int main() {
  CommandResult result = Command::exec("ls -a");
  std::cout << "status: " << result.exitstatus << '\n'
            << "coutput: " << result.output << '\n';
}