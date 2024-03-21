# TODO: Automate version update process.
# Current manual workaround:
# Retrieve the sha256 hashes of files from this CI step:
# https://github.com/doseiai/engine/blob/main/.github/workflows/cli-ci-cd.yaml#L84
# Example: https://github.com/doseiai/engine/actions/runs/7686266959/job/20944978140

class Dosei < Formula
  desc "Command Line Interface (CLI) for Dosei."
  homepage "https://dosei.ai"
  license "Apache-2.0"
  version "0.0.21"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/doseiai/engine/releases/download/0.0.21/dosei-x86_64-apple-darwin.zip"
    sha256 "05132bdb51a0bc1af3fe48ac22d075d20e9f08a21b58fa310a9b41850b54e6e0"
  end

  if OS.linux?
    url "https://github.com/doseiai/engine/releases/download/0.0.21/dosei-x86_64-unknown-linux-gnu.zip"
    sha256 "f44e417465a57287fc504865b7ccbdd98ea9ce1351072b44c961102738cc49b7"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/doseiai/engine/releases/download/0.0.21/dosei-aarch64-apple-darwin.zip"
    sha256 "ff37c3c91d36f715e8201015fe12bad619db55b1826d376ad08c201c9374ca14"
  end

  def install
    bin.install "dosei"
  end

  test do
    system "#{bin}/dosei --version"
  end

end
