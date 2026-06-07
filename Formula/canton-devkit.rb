class CantonDevkit < Formula
  desc "Canton DevKit: LocalNet, DAR, contracts, and observability tooling"
  homepage "https://github.com/bitdynamics-ab/homebrew-canton-devkit"
  license "Apache-2.0"
  version "0.7"

  on_macos do
    on_arm do
      url "https://github.com/bitdynamics-ab/homebrew-canton-devkit/releases/download/v#{version}/canton-devkit_v#{version}_darwin_arm64.tar.gz"
      sha256 "a2fe76b9f7f12204e777e9c662be7b980ffa18604bc88b3405eebbec6cb4a956"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bitdynamics-ab/homebrew-canton-devkit/releases/download/v#{version}/canton-devkit_v#{version}_linux_amd64.tar.gz"
      sha256 "2ac9972a40f313508ba69424da44ec51945dc2a9f31b0633f3c1dd5e23df2d86"
    end
  end

  def install
    bin.install "canton-devkit"
    prefix.install "LICENSE"
    prefix.install "README.md"
  end

  test do
    assert_match "Canton LocalNet", shell_output("#{bin}/canton-devkit localnet --help")
  end
end
