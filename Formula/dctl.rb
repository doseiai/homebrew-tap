# TODO: Automate version update process.
# Current manual workaround:
# Retrieve the sha256 hashes of files from this CI step:
# https://github.com/doseiai/engine/blob/main/.github/workflows/cli-ci-cd.yaml#L84
# Example: https://github.com/doseiai/engine/actions/runs/7686266959/job/20944978140

class Dctl < Formula
  desc "Command Line Interface (CLI) for Dosei."
  homepage "https://dosei.ai"
  license "Apache-2.0"
  version "0.0.17"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/doseiai/engine/releases/download/0.0.17/dctl-x86_64-apple-darwin.zip"
    sha256 "bbec0bdb45fb7b93ca23759f2cc7920d70bd3e3d4055bb0bb818e227635eda9e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/doseiai/engine/releases/download/0.0.17/dctl-aarch64-apple-darwin.zip"
    sha256 "ee3aa500c17e8e27da714d1f88590a2faeb487f2b729861b98548b56c335b850"
  end

  if OS.linux?
    url "https://github.com/doseiai/engine/releases/download/0.0.17/dctl-x86_64-unknown-linux-gnu.zip"
    sha256 "60c42e965cd504c2e093eb5e57a71d755ef434250c924395456bc53d4201c3ff"
  end

  def install
    bin.install "dctl"
  end

  test do
    system "#{bin}/dctl --version"
  end

end
