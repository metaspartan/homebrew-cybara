class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1509"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1509/cybara-v1.0.1509-darwin-arm64-cli"; sha256 "f3c0f07b91113398db6b160a5255cbf336abfc03b6491cfcd3c98ce35b25edb7" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1509/cybara-v1.0.1509-darwin-x64-cli"; sha256 "9f1ce693f60a275306bc1389e0c7fd66e3f496f27cb7fcd896fbbc52f8d2cd9b" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1509/cybara-v1.0.1509-linux-arm64-cli"; sha256 "1f516de682739f69aeff1aad6ed23cc1ace5d8ea005f9762f51d63e39cbd5d80" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1509/cybara-v1.0.1509-linux-x64-cli"; sha256 "e6e9e1d70aae7c7d44769a86a4daae5aaf578b79be65f56435d292bb27ec6588" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
