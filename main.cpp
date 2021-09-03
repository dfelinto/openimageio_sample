#include <OpenImageIO/imageio.h>
#include <iostream>
using namespace std;
using namespace OIIO;

int main(int argc, char *argv[]) {

  if (argc < 2) {
    cout << "Expected image filepath as argument."
         << "\n";
    return 1;
  }

  std::string filename = argv[1];
  cout << "Image: " << filename << "\n";

  // auto in = ImageInput::open(filename, nullptr, nullptr);
  // in->close();

#if 1
  auto in = ImageInput::create(filename);
  if (! in  ||  ! in->supports ("ioproxy")) {
    cout << "IO Proxy not support"
         << "\n";
    return 1;
  }
  cout << "IO Proxy fully support"
       << "\n";
#endif

  return 0;
}
