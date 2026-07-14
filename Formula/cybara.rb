class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1547"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1547/cybara-v1.0.1547-darwin-arm64-cli"; sha256 "d11ed4e40c495a9f0905e6c9cdbf702b8cc34d81d51f69bec58cd46f5873176f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1547/cybara-v1.0.1547-darwin-x64-cli"; sha256 "3695a7e3993d694db3bac737713236b585e63ab3b52f1965ec520eec6585db68" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1547/cybara-v1.0.1547-linux-arm64-cli"; sha256 "670ceaf6234e489f17b5b49934858623b4bd922666a45f7c7e8a66c8dffa0423" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1547/cybara-v1.0.1547-linux-x64-cli"; sha256 "edffd86a1502ada74dcab4c479a09e2cac6a5e11bd6f3e4572444ea801e1e2ae" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
