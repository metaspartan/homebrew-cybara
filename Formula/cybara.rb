class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2156"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2156/cybara-v1.0.2156-darwin-arm64-cli"; sha256 "a35fe00f86493d200296fd92b8bd0b46379d93b73eb6f20112dd9319e84c3b68" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2156/cybara-v1.0.2156-darwin-x64-cli"; sha256 "6f1cde3f67d0fa911e232b3b9b71b736eff034d4e231236a409d82710ed338c0" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2156/cybara-v1.0.2156-linux-arm64-cli"; sha256 "143ae4c335c9fcec31614c710f14ff30f9968cdf38cb0ce76937b2342c93bcd1" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2156/cybara-v1.0.2156-linux-x64-cli"; sha256 "6b4e03a6840cb168c30dfd465c9064178f2116df51560188d3493e4b207bf2e9" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
