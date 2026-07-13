class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1470"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1470/cybara-v1.0.1470-darwin-arm64-cli"; sha256 "e9bca4292ccd0a3e9b1e8797ac48f649595b45e7828e40d3301bae5d366de205" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1470/cybara-v1.0.1470-darwin-x64-cli"; sha256 "bd4871df2a7e8fdd40bb41701fcb0f1b211aa848d892dad48eeecc537bac12a7" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1470/cybara-v1.0.1470-linux-arm64-cli"; sha256 "49064807c18d584d306ce4bdf34114fe6bae259c683bcb6d8a342bef261cabe8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1470/cybara-v1.0.1470-linux-x64-cli"; sha256 "7af9c86678b1898386d6e499c0582dfd714757dcf429f2f143763f94f72a48a1" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
