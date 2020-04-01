class SnptAT300 < Formula
  desc "Gist powered CLI snippet retriever"
  homepage "https://github.com/mike182uk/snpt"
  url "https://github.com/mike182uk/snpt/releases/download/3.0.0/snpt-3.0.0-darwin-amd64.tar.gz"
  sha256 "439de8e8dc405f7a3f0a78c0467537cb9b2b188a68ab14d9e43a84085066c3e7"

  def install
    bin.install "snpt"
  end

  test do
    assert_equal "snpt v3.0.0", `#{bin}/snpt version`.strip
  end
end
