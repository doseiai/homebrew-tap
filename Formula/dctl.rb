# TODO: Automate version update process.
# Current manual workaround:
# Retrieve the sha256 hashes of files from this CI step:
# https://github.com/doseiai/engine/blob/main/.github/workflows/cli-ci-cd.yaml#L84
# Example: https://github.com/doseiai/engine/actions/runs/7686266959/job/20944978140

class Dctl < Formula
  desc "Command Line Interface (CLI) for Dosei."
  homepage "https://dosei.ai"
  license "Apache-2.0"
  version "0.0.15"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/doseiai/engine/releases/download/0.0.15/dctl-x86_64-apple-darwin.zip"
    sha256 "fd4fc23a8749d73ae7cdbfdfb85bac7d37aff7256ffe26ee191b12a8e1ca5915"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/doseiai/engine/releases/download/0.0.15/dctl-aarch64-apple-darwin.zip"
    sha256 "396ed171c39cd10ad1fd6b6d66d150aa9e8c732e073e84de5c4a19ff3a95d91b"
  end

  if OS.linux?
    url "https://github.com/doseiai/engine/releases/download/0.0.15/dctl-x86_64-unknown-linux-gnu.zip"
    sha256 "2160069b9112950debd7aa834b3e154860c2d0b8f34e733707421d55877c6708"
  end

  def install
    bin.install "dctl"
  end

  test do
    system "#{bin}/dctl --version"
  end

end
