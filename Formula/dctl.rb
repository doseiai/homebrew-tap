# TODO: Automate version update process.
# Current manual workaround:
# Retrieve the sha256 hashes of files from this CI step:
# https://github.com/doseiai/engine/blob/main/.github/workflows/cli-ci-cd.yaml#L84
# Example: https://github.com/doseiai/engine/actions/runs/7686266959/job/20944978140

class Dctl < Formula
  desc "Command Line Interface (CLI) for Dosei."
  homepage "https://dosei.ai"
  license "Apache-2.0"
  version "0.0.10"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/doseiai/engine/releases/download/0.0.10/dctl-x86_64-apple-darwin.zip"
    sha256 "4ba2080df547cad741ca92167ef73dc23d2c662c702bc4c9658f23e6cd85ed97"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/doseiai/engine/releases/download/0.0.10/dctl-aarch64-apple-darwin.zip"
    sha256 "5a579310dd774f34336b6e06a08a63f5f43a68d184ec4048105411b7aff8df24"
  end

  if OS.linux?
    url "https://github.com/doseiai/engine/releases/download/0.0.10/dctl-x86_64-unknown-linux-gnu.zip"
    sha256 "1b51653677f3a3aceed99f8f61145444372900e4fc38afd6199d2bc4642f2bb1"
  end

  def install
    bin.install "dctl"
  end

  test do
    system "#{bin}/dctl --version"
  end

end
