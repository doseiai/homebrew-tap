class Dosei < Formula
  desc "Developer Platform for creating, deploying, and managing containerized applications."
  homepage "https://dosei.ai"
  url "https://github.com/doseiai/engine/archive/refs/tags/0.0.9.tar.gz"
  sha256 "4f3294d351498f34821bfaf3fc938a922e68bb76c2676be9fbb8ab15e4759c45"
  license "Apache-2.0"

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "make"
  end

end
