# TODO: Automate version update process.
# Current manual workaround:
# Retrieve the sha256 hashes of files from this CI step:
# https://github.com/doseiai/engine/blob/main/.github/workflows/cli-ci-cd.yaml#L84

class Dctl < Formula
  desc "Command Line Interface (CLI) for Dosei."
  homepage "https://dosei.ai"
  license "Apache-2.0"
  version "0.0.9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/doseiai/engine/releases/download/0.0.9/dctl-x86_64-apple-darwin.zip"
    sha256 "4efc4be0cb969308566ca8ec1f905668e8b7444e5c764784ee61fde8673fbdd7"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/doseiai/engine/releases/download/0.0.9/dctl-aarch64-apple-darwin.zip"
    sha256 "b02445c0807cb8e1463a22e44c55c58701b8034b0d7079fcc95d0a6e8c03d0a4"
  end

  if OS.linux?
    url "https://github.com/doseiai/engine/releases/download/0.0.9/dctl-x86_64-unknown-linux-gnu.zip"
    sha256 "90e6a1029b7d61c005c6ecad9c4733c7e9b8dbebaa4311b9ba33c0da034bf36e"
  end

  def install
    bin.install "dctl"
  end

  test do
    system "#{bin}/dctl --version"
  end

end
