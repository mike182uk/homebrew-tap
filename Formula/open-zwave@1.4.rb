class OpenZwaveAT14 < Formula
  desc "Library that interfaces with selected Z-Wave PC controllers"
  homepage "http://www.openzwave.com"
  url "https://github.com/OpenZWave/open-zwave/archive/v1.4.tar.gz"
  sha256 "efb54adf0cda12f76fcb478f7cf3b7d108b5daf38d60b4410cca7600aa072e83"

  depends_on "pkg-config" => :build
  depends_on "doxygen" => :build

  def install
    ENV["BUILD"] = "release"
    ENV["PREFIX"] = prefix

    # https://github.com/Homebrew/homebrew-core/pull/22486/files#r160018571
    # https://github.com/OpenZWave/open-zwave/issues/1416
    ENV["pkgconfigdir"] = "#{lib}/pkgconfig"

    system "make", "install"
  end

  test do
    (testpath/"test.cpp").write <<~EOS
      #include <iostream>
      #include <openzwave/Manager.h>
      int main()
      {
        return OpenZWave::Manager::getVersionAsString().empty();
      }
    EOS
    system ENV.cxx, "test.cpp", "-I#{include}/openzwave",
                    "-L#{lib}", "-lopenzwave", "-o", "test"
    system "./test"
  end
end
