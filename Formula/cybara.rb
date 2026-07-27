class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1973"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1973/cybara-v1.0.1973-darwin-arm64-cli"; sha256 "6f858fd775b0ca2be26389968a6a28cfd82b3f99be054e177a6bc9f0d6b857d8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1973/cybara-v1.0.1973-darwin-x64-cli"; sha256 "e77feb6e28e0cf0d5f0ebe2fc1bc54388420bb2e8328b6a3e8b629864eceb9d3" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1973/cybara-v1.0.1973-linux-arm64-cli"; sha256 "5ea9f9b6cda2a3d78c6aeb1f51dc3c7beacbf1a8eb2ee5a82e0b3bc308e4c04c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1973/cybara-v1.0.1973-linux-x64-cli"; sha256 "7b3790a77e427396379218018791e010c3261b1d6bc1bb4e6c7adda1f697c04b" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
